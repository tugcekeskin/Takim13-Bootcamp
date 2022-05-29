import 'package:aboneliksayfasi/butceSayfasi/butce_form.dart';
import 'package:flutter/material.dart';

class TabbarArea extends StatefulWidget {

   TabbarArea({Key? key}) : super(key: key);

  @override
  State<TabbarArea> createState() => _TabbarAreaState();
}

class _TabbarAreaState extends State<TabbarArea> with TickerProviderStateMixin{
  

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      
      floatingActionButton: Button(),
    
      body: ListView(
        children: [            
           Container(             
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('1650 tl',style: TextStyle(fontSize: 30),),
                  ElevatedButton(onPressed: (){}, child: Text('Analizlere Git'))
                ],
              ),
            ),
          ),

      Container(
        child: Align(
          alignment: Alignment.center,
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black,        
            unselectedLabelColor: Colors.grey,
            tabs:  [
             Tab(text: 'Toplam',),
             Tab(text: 'Gelir',),
             Tab(text: 'Gider',),
          ]
          ),
        )
        ),
      
      Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height*0.5,
        child: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              children: [
                
                 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kira'),
                  Text('-3200 tl'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,),
              child: Divider(color: Colors.black,),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Netflix'),
                  Text('-30 tl'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: Colors.black,),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Yurt Ücreti'),
                  Text('850 tl'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Market Alışveriş'),
                  Text('-80 tl'),
                ],
              ),
            ),
             
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.black,)),
                  Expanded(child: Center(child: Text('Nisan'))),
                  Expanded(child: Divider(color: Colors.black,))
                ],
              ),
            ),
             
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Burs'),
                  Text('800 tl'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Divider(color: Colors.black,),
            ), 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Market Alışveriş'),
                  Text('320 tl'),
                ],
              ),
            ),
              ],
            ),
               
             
            Text('herer'),
            Text('gthtgt'),
        ]),
      ),   
        ],
      )
         
        
     
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ButceForm(),));
      },
      child: Icon(Icons.add),
      );
  }
}
   