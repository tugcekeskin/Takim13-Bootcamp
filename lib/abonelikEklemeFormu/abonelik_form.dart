import 'package:aboneliksayfasi/abonelikListe/AddCustomSub.dart';
import 'package:aboneliksayfasi/abonelikListe/ReccomendedSubs.dart';
import 'package:aboneliksayfasi/abonelikListe/SearchBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AbonelikForm extends StatefulWidget {
  const AbonelikForm({Key? key}) : super(key: key);

  @override
  State<AbonelikForm> createState() => _AbonelikFormState();
}

class _AbonelikFormState extends State<AbonelikForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),     
      body: Menu(),
    );
  }

  SingleChildScrollView Menu() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                  height: 80,
                  width: 80,
                  decoration:
                  const BoxDecoration(
                    color: Color(0xFF9B9D9C),
                    shape: BoxShape.circle,
              ),
                alignment: Alignment.center,
                child:
                const Text('T',
                  style: TextStyle(
                    fontSize: 65.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)),
                ),
          ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Item(),
          ),
          AllDivider(),
           MoneyArea(),
        AllDivider(),            
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DropdownArea(),
        ),
        AllDivider(),

        SubscriptionTime(),
        AllDivider(),
        SubscriptionDate(),
        AllDivider(),
        SubscriptionRemember(),     
        NoteArea(),      
          
        ],
      ),
    );
  }

  Padding SubscriptionRemember() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Row(
                children: [
                  Expanded(flex: 2, child: Text('Hatırlatıcı',style: TextStyle(fontWeight: FontWeight.bold),)),
                  Expanded( flex: 1, child: DropdownButton<String>(alignment: Alignment.center,
                items: [
             DropdownMenuItem<String>(child: Text('haftalık'),value: 'dsd',),
             DropdownMenuItem<String>(child: Text('aylık'),value: 'gtrg',),
             DropdownMenuItem<String>(child: Text('yıllık'),value: 'kuj',),
      ], onChanged: (String ){
        
          },hint: Text('1 gün önce'),
            value: null,) ),
          ],
           ),
         );
  }

  Padding SubscriptionTime() {
    return Padding(
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
        );
  }

  Padding MoneyArea() {
    return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15),
         child: Row(
     children: [
     Expanded(flex: 2, child: Text('Ücreti',style: TextStyle(fontWeight: FontWeight.bold),)),
     Expanded(flex: 1, child: TextField(
          decoration: InputDecoration(
               hintText: '9,90 tl',
               border: InputBorder.none,contentPadding: EdgeInsets.symmetric(horizontal: 9)
        ),
      )),
      ],
      ),
        );
  }






  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
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

class SubscriptionDate extends StatelessWidget {
  const SubscriptionDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Row(
      children: [
        Expanded(flex: 5, child: Text('Başlangıç Tarihi',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(flex: 4, child: Row(
           children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
              TextButton(onPressed: (){}, child: Text('02/05/2022'))
           ],
           )),
         ],
          ),
          );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text('Abonelik Adı',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(flex: 1, child: TextField(
          decoration: InputDecoration(
            hintText: 'TWİTCH',
            border: InputBorder.none,
            
          ),
        )),
      ],
    );
  }
}


class AllDivider extends StatelessWidget {
  const AllDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(height: 0, color: Colors.black,),
    );
  }
}

class DropdownArea extends StatelessWidget {
  
   DropdownArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text('Ödeme Periyodu',style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(
          flex: 1, child: DropdownButton<String>(
            alignment: Alignment.center,
            items: [
             DropdownMenuItem<String>(child: Text('haftalık'),value: 'dsd',),
             DropdownMenuItem<String>(child: Text('aylık'),value: 'gtrg',),
             DropdownMenuItem<String>(child: Text('yıllık'),value: 'kuj',),
          ], onChanged: (String ){
            
          },hint: Text('Aylık'),value: null,) ),
      ],
    );
  }
}


class NoteArea extends StatelessWidget {
  const NoteArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
        minLines: 5,
        maxLines: 5,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          counter: ElevatedButton(onPressed: (){}, child: Text('Kaydet')),
          hintText: 'Not Ekle',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
          )
        ),
      ),
    );
  }
}