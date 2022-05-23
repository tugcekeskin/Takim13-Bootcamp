import 'package:flutter/material.dart';

class ButceForm extends StatelessWidget {
  const ButceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: butceFormAppbar(),
      body: Menu(),
    );
  }

  ListView Menu() {
    return ListView(
      children: [
        Box(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
      children: [
          Expanded(flex: 3, child: Text('Harcama',style: TextStyle(fontWeight: FontWeight.bold),)),
          Expanded(flex: 2, child: TextField(
            decoration: InputDecoration(
              hintText: 'Market Alışverişi',
              border: InputBorder.none,
              
            ),
          )),
      ],
    ),
        ),
       
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Divider(color: Colors.black,),
    ),

        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15),
         child: Row(
    children: [
      Expanded(flex: 2, child: Text('Ücreti',style: TextStyle(fontWeight: FontWeight.bold),)),
      Expanded(flex: 1, child: TextField(
          decoration: InputDecoration(
            hintText: '100 tl',
            border: InputBorder.none,contentPadding: EdgeInsets.all(9)
          ),
      )),
    ],
  ),
       ),

       Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Divider(color: Colors.black,),
    ),

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15),
         child: Row(
    children: [
      Expanded(flex: 5, child: Text('Tarih',style: TextStyle(fontWeight: FontWeight.bold),)),
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
    ),

     
     
      ],
    );
  }

  Center Box() {
    return Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button1(),
              Button2(),
            ],
          ),
        ),
      );
  }

  AppBar butceFormAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded,color: Colors.black,),
    )
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all(Colors.indigo),
    ),
      onPressed: (){},
       child: Text('Gider',)
       );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
         backgroundColor: MaterialStateProperty.all(Colors.indigo)
      ),
      onPressed: (){},
       child: Text('Gelir')
       );
  }
}



