
import 'package:aboneliksayfasi/model/abonelikler_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../abonelik_sayfasi.dart';

class AbonelikForm extends StatefulWidget {
  const AbonelikForm({Key? key}) : super(key: key);

  @override
  State<AbonelikForm> createState() => _AbonelikFormState();
}

class _AbonelikFormState extends State<AbonelikForm> {
   
    String secilenRemember = '1 Gün Önce'; 
    final _formKey = GlobalKey<FormState>();
    var aa = TextEditingController();
    var bb = TextEditingController();
    var cc = TextEditingController();
   
    Future<void> kayit(String abonelik_ad, String baslangic_tarihi, String abonelik_ucreti) async {
      await AboneliklerDatabase().AbonelikEkle(abonelik_ad, baslangic_tarihi, abonelik_ucreti);
      Navigator.push(context, MaterialPageRoute(builder: (context) => AbonelikSayfasi(),));
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFf8f9fa),
      appBar: buildAppBar(),     
      body: Form(
        key: _formKey,
       autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
             SvgPicture.asset('assets/icons/pencil.svg',height: 77),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
               child: Row(
      children: [
        Expanded(flex: 2, child: Text('Abonelik Adı',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(flex: 1, child: TextField(
          controller: aa,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: Colors.red),
            hintText: 'TWİTCH',
            border: InputBorder.none,
            
          ),
        )),
      ],
    ),
             ),
          
           Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 0, color: Colors.black,),
           ),


           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Row(
       children: [
       Expanded(flex: 2, child: Text('Ücreti',style: TextStyle(fontWeight: FontWeight.bold),)),
       Expanded(flex: 1, child: TextField(
            controller: cc,
              decoration: InputDecoration(
          hintText: '9,90 tl',
          border: InputBorder.none,contentPadding: EdgeInsets.symmetric(horizontal: 9)
          ),
        )),
        ],
        ),
           ),

         Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 0, color: Colors.black,),
          ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Row(
       children: [
        Expanded(flex: 2, child: Text('Yineleme',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(flex: 1, child: TextField(
           
          decoration: InputDecoration(
          hintText: '1 Ay',
          border: InputBorder.none,contentPadding: EdgeInsets.symmetric(horizontal: 9)
             ),
             )),
            ],
            ),
             ), 

          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 0, color: Colors.black,),
          ),

          Padding(
       padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Row(
      children: [
        Expanded(flex: 2, child: Text('Başlangıç Tarihi',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(flex: 1, child: TextField(
           controller: bb,
          decoration: InputDecoration(
            hintText: '16 Temmuz',
            border: InputBorder.none,
            
          ),
        )),
      ],
    )
          ),

         Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 0, color: Colors.black,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Hatırlatıcı',style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(
                  flex: 1,
                  child: DropdownButton<String>(
                    alignment: Alignment.center,
                    items: [
                      DropdownMenuItem<String>(child: Text('1 Gün Önce'),value: '1 Gün Önce',),
                      DropdownMenuItem<String>(child: Text('3 Gün Önce'),value: '3 Gün Önce',),
                      DropdownMenuItem<String>(child: Text('5 Gün Önce'),value: '5 Gün Önce',),
                    ],
                    onChanged: (gelenDeger){
                            setState(() {
                           secilenRemember = gelenDeger.toString();
                            });
                    },
                    hint: Text('1 Gün Önce'),
                    value: secilenRemember,
                          ),
                ) 
              ],
            ),
          ),

          

          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        
             
        minLines: 5,
        maxLines: 5,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          counter: ElevatedButton(onPressed: (){
            kayit(aa.text, bb.text, cc.text);

          /*  bool _validate = _formKey.currentState!.validate();
           if(_validate){
             _formKey.currentState!.save();
             String result = 'username: $_isim\nemail: $_ucret\nsifre: $_tekrar ';
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
             _formKey.currentState!.reset();
           } */
          }, child: Text('Kaydet')),
          hintText: 'Not Ekle',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
          )
        ),
      ),
      ),

          

          ],
      ))
    );
  }

  

  
  
  
  AppBar buildAppBar() {

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.close_rounded,
        color: Color(0xFF01395E),
      size: 40,),
        onPressed: () {
            Navigator.pop(context);
        },
      ),
      centerTitle: true,
        title: Text('Abonelik Ekle',
        style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF01395E)),),
    );
  }
  
  

}