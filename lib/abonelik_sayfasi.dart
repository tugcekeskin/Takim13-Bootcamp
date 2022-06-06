
import 'dart:convert';
import 'dart:ui';
import 'package:aboneliksayfasi/butceSayfasi/butce_ilksayfa.dart';
import 'package:aboneliksayfasi/model/abonelikler_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'abonelikEklemeFormu/abonelik_form.dart';
import 'model/abonelikler_model.dart';

class AbonelikSayfasi extends StatefulWidget {
   

   AbonelikSayfasi({Key? key, }) : super(key: key);

  @override
  State<AbonelikSayfasi> createState() => _AbonelikSayfasiState();
}

class _AbonelikSayfasiState extends State<AbonelikSayfasi> {

   
   Future<List<Abonelikler>> tumAbonelikleriGoster() async {
    var aboneliklerListesi = await AboneliklerDatabase().tumAbonelikler();

    return aboneliklerListesi;
  }
  
  Future<void> sil() async {
    await AboneliklerDatabase().kisiSil(1);
  }
   Future<void> sil1() async {
    await AboneliklerDatabase().kisiSil(2);
  }
   Future<void> sil2() async {
    await AboneliklerDatabase().kisiSil(3);
  }
  Future<void> sil3() async {
    await AboneliklerDatabase().kisiSil(4);
  }
  Future<void> sil4() async {
    await AboneliklerDatabase().kisiSil(5);
  }
  Future<void> sil5() async {
    await AboneliklerDatabase().kisiSil(6);
  }
  Future<void> sil6() async {
    await AboneliklerDatabase().kisiSil(7);
  }
  Future<void> sil7() async {
    await AboneliklerDatabase().kisiSil(8);
  }
  Future<void> sil8() async {
    await AboneliklerDatabase().kisiSil(9);
  }
  Future<void> sil9() async {
    await AboneliklerDatabase().kisiSil(10);
  }
   
  @override
  void initState() {
    super.initState();
    sil();
    sil1();
    sil2();
    sil3();
    sil4();
    sil5();
    sil6();
    sil7();
    sil8();
    sil9();
   
  } 

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
  
      appBar: AppbarArea(),
      
      body: ListView(
        children: [
          MoneyArea(context: context,),
          Padding(
         padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 50),
         child: TextFieldButton(),
           ),

          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 5),
            child: Text('Mevcut Abonelikler',style: TextStyle(fontSize: 18,color: Color(0xFF03045E)),),
          ),

          FutureBuilder<List<Abonelikler>>(
          future: tumAbonelikleriGoster(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var aboneliklerListesi = snapshot.data;
              return SizedBox(
                height: MediaQuery.of(context).size.height*0.6,
                child: ListView.builder(
                  itemCount: aboneliklerListesi!.length,
                  itemBuilder: (context,indeks){
                    var abone = aboneliklerListesi[indeks];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Dismissible(
                        key: Key(abone.abonelik_id.toString()),
                        
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          color:  Color(0xFFbbd0ff),
                          child: ListTile(
                            title: Text(abone.abonelik_ad.toString(), style: TextStyle(color: Colors.black),),
                            subtitle: Text(abone.baslangic_tarihi.toString(), style: TextStyle(color: Colors.black),),
                            trailing: Text(abone.abonelik_ucreti.toString(), style: TextStyle(color: Colors.black) ,),
                          )
                        ),
                      ),
                    );
                  },
                ),
              );
            }else{
              return Center();
            }
          },
        ),
    
        

        ],
      ),
      
      floatingActionButton: FloatingButton(),
      bottomNavigationBar: Bar(), 
    );
  }


  
  

   BottomNavigationBar Bar() {
    return BottomNavigationBar(
      
      items: [
      ItemOne(),
      ItemTwo(),
      
    ]); 
  } 

   

   BottomNavigationBarItem ItemTwo() => BottomNavigationBarItem(
    icon: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarArea(),));
    },
     icon: Icon(Icons.monetization_on)),
    label: '',
    backgroundColor: Colors.blue);

  BottomNavigationBarItem ItemOne() => BottomNavigationBarItem(
    icon: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
    label: '',
    backgroundColor: Colors.blue); 

  

  AppBar AppbarArea() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xFF023E8A), 
      
      
    );
  }

  
}




class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF00B4D8),
      onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context) => AbonelikForm(),));
      }, 
      child: Icon(Icons.add)
      );
  }
}



class TextFieldButton extends StatelessWidget {
  const TextFieldButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search),     
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(25)
          )
          ),
        hintText: 'Abonelik Ara',
        fillColor: Color(0xFFCAF0F8),
        filled: true,
        hintStyle: TextStyle(color: Colors.blue)
      ),
    );
  }
}

class MoneyArea extends StatelessWidget {
  const MoneyArea({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
             children: [
               Expanded(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    
                     Text('120', style: TextStyle(color: Colors.white,fontSize: 25),),
                     SvgPicture.asset('assets/icons/turkish_lira.svg',color: Colors.white,),
                   ],
                 ),
               ),
               
               Expanded( child: Text('Aylık Abonelik Tutarı',style: TextStyle(fontSize: 20,color: Colors.white60),)),
             ],
           ),
           decoration: BoxDecoration(
             color: Color(0xFF023E8A), 
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(40),
               bottomRight: Radius.circular(40)
             ),        
            ),
     );
  }
}









