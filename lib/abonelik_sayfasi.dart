


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AbonelikSayfasi extends StatefulWidget {
  const AbonelikSayfasi({Key? key}) : super(key: key);

  @override
  State<AbonelikSayfasi> createState() => _AbonelikSayfasiState();
}

class _AbonelikSayfasiState extends State<AbonelikSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarArea(),
      body: Menu(),
      floatingActionButton: FloatingButton(),
      bottomNavigationBar: Bar(),
    );
  }

  ListView Menu() {
    return ListView(
      children: [
        
       MoneyArea(context: context),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 50),
         child: TextFieldButton(),
       ),
       CardOdemeler(), 
       List(),
      ],
    );
  }

  BottomNavigationBar Bar() {
    return BottomNavigationBar(
      
      items: [
      ItemOne(),
      ItemTwo(),
      ItemThree(),
      
    ]); 
  }

  BottomNavigationBarItem ItemThree() => BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: '',backgroundColor: Colors.red); 

  BottomNavigationBarItem ItemTwo() => BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard),label: '',backgroundColor: Colors.blue);

  BottomNavigationBarItem ItemOne() => BottomNavigationBarItem(icon: Icon(Icons.face),label: '',backgroundColor: Colors.blue);

  

  AppBar AppbarArea() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.library_add,)), 
      title: AppbarText(),
      actions: [
        AppbarIcon(),
      ],
    );
  }

  Text AppbarText() => Text(TitleText().name);
}

class List extends StatelessWidget {
  const List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
        children: [
          Expanded(flex: 3,
            child: ListTile(
                   title: Text('Superonline'),
                   subtitle: Text('11 Mayıs'),
                   leading: CircleAvatar(child: SvgPicture.asset('assets/icons/wifi.svg'),),
                   trailing: Text('18 tl'),     
                   ),
          ),
      Expanded(flex: 1, child: IconButton(onPressed: (){}, icon: Icon(Icons.delete))),
        ],
      ),
    
    Row(
      children: [
        Expanded(flex: 3,
          child: ListTile(
                 title: Text('Amazon Prime'),
                 subtitle: Text('13 Mayıs'),
                 leading: CircleAvatar(child: SvgPicture.asset('assets/icons/amazon.svg'),),
                 trailing: Text('8 tl'),
               ),
        ),
    Expanded(flex: 1, child: IconButton(onPressed: (){}, icon: Icon(Icons.delete))),
      ],
    ),
    Row(
      children: [
        Expanded(flex: 3,
          child: ListTile(
                 title: Text('YouTube Premium'),
                 subtitle: Text('15 Mayıs'),
                 leading: CircleAvatar(child: SvgPicture.asset('assets/icons/youtube.svg'),),
                 trailing: Text('12 tl'),
               ),
        ),
    Expanded(flex: 1, child: IconButton(onPressed: (){}, icon: Icon(Icons.delete))),
      ],
    ),
     Row(
      children: [
        Expanded(flex: 3,
          child: ListTile(
                 title: Text('Bein Connect'),
                 subtitle: Text('18 Mayıs'),
                 leading: CircleAvatar(child: SvgPicture.asset('assets/icons/movie.svg'),),
                 trailing: Text('20 tl'),
               ),
        ),
    Expanded(flex: 1, child: IconButton(onPressed: (){}, icon: Icon(Icons.delete))),
      ],
    ),

    
      ],
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () { }, child: Icon(Icons.add));
  }
}



class TextFieldButton extends StatelessWidget {
  const TextFieldButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        hintText: 'Abonelik Ara',
        fillColor: Colors.pinkAccent,
        filled: true,
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
             color: Colors.blue, 
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(40),
               bottomRight: Radius.circular(40)
             ),        
            ),
     );
  }
}

class CardOdemeler extends StatelessWidget {
  const CardOdemeler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink.shade300,
      margin: EdgeInsets.symmetric(horizontal: 8),
      
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Yaklaşan Ödemeler'),
              ListTile(
                leading: CircleAvatar(child: SvgPicture.asset('assets/icons/netflix.svg'), backgroundColor: Colors.pink.shade300,),
                title: Text('Netflix'),
                subtitle: Text('09 Mayıs'),
                trailing: Text('30 tl'), 
              ),
              
              ListTile(
                leading: CircleAvatar(child: SvgPicture.asset('assets/icons/spotify.svg'),),
                title: Text('Spotify'),
                subtitle: Text('09 Mayıs'),
                trailing: Text('30 tl'),
              ),
              
            ],)
          
        ),
      ),
    );
  }
}

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.attach_money, ));
  }
}


class TitleText {
    final String name = 'Abonelikler';
    final String nameTest = 'Aylık Abonelik Tutarı';
    final String money = '2400tl';
  }

class DrawerColor{
   static Color transparent = Colors.transparent;
}  

