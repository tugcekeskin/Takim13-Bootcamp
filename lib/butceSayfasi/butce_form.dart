import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButceForm extends StatefulWidget {
  const ButceForm({Key? key}) : super(key: key);

  @override
  State<ButceForm> createState() => _ButceFormState();
}

class _ButceFormState extends State<ButceForm> {

  int? miktar;
  String isim = "Harcama ismi";
  String not = "Harcama detayı";
  String type = "Gelir";

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Menu(),
    );
  }

  ListView Menu() {
    return ListView(
      children: [
        SizedBox(height: 30,),

        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
        Text("İşleminizi Girin", textAlign: TextAlign.center, style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
        
        SizedBox(height: 15,),

        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              //SizedBox(width: 20.0),

              ChoiceChip(
                label: Text("Gelir",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: type == "Gelir" ? Colors.white : Colors.black)),
                selectedColor: Colors.blue,
                selected: type == "Gelir" ? true : false,
                onSelected: (val){
                  if(val){
                    setState(() {
                      type = "Gelir";
                    });
                  }
                },
              ),

              SizedBox(width: 20.0),

               ChoiceChip(
                label: Text("Gider",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: type == "Gider" ? Colors.white : Colors.black)),
                selectedColor: Colors.blue,
                selected: type == "Gider" ? true : false,
                onSelected: (val){
                  if(val){
                    setState(() {
                      type = "Gider";
                    });
                  }
                },
              ),
            ],
          ),
        ),
     
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(flex: 3, child: Text('Harcama Adı', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
              Expanded(flex: 2, child: TextField(
                decoration: InputDecoration(
                  hintText: 'Alışveriş',
                  border: InputBorder.none, contentPadding: EdgeInsets.zero
                ),
                style: TextStyle(fontSize: 17.0),
                onChanged: (val){
                try {
                  isim = val;
                } catch (e) {}
              },
              )),
            ],
          ),
        ),
     
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Divider(color: Colors.black,),
        ),

        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Row(
          children: [ 
            Expanded(flex: 2, child: Text('Ücreti',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
            Expanded(flex: 1, child: TextField(
                decoration: InputDecoration(
                  hintText: '0 TL',
                  border: InputBorder.none, contentPadding: EdgeInsets.zero
                ),
              style: TextStyle(fontSize: 17.0),
              onChanged: (val){
                try {
                  miktar = int.parse(val);
                } catch (e) {}
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
            )),
          ],
        ),
       ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Divider(color: Colors.black),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(flex: 5, child: Text('Tarih', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
            Expanded(flex: 4, child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
                TextButton(onPressed: (){}, child: Text('02/05/2022'))
              ],
            )),
          ],
        ),
      ),

      SizedBox(height: 10,),

      Padding(
        padding: const EdgeInsets.all(12),
        child: TextField(
          minLines: 5,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            //counter: ElevatedButton(onPressed: (){}, child: Text('Kaydet')),
            hintText: 'Açıklama Ekle',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            )
          ),
          style: TextStyle(fontSize: 17.0),
          maxLength: 300,
          onChanged: (val){
                try {
                  not = val;
                } catch (e) {}
              },
        ),
      ),

      SizedBox(height: 10,),

      SizedBox(
        height: 50.0,
        child: ElevatedButton(
          onPressed: () {
            print(isim);
            print(miktar);
            print(not);
            print(type);
          },
          child: Text(
            "Ekle",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
          )
        ),
      )
      ],
    );
  }
}