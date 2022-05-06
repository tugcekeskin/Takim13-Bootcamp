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
      bottomNavigationBar: Bar(),
    );
  }

  BottomNavigationBar Bar() {
    return BottomNavigationBar(items: [
      ItemOne(),
      ItemTwo(),
      ItemThree(),
    ]); 
  }

  BottomNavigationBarItem ItemThree() => BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: '');

  BottomNavigationBarItem ItemTwo() => BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard),label: '');

  BottomNavigationBarItem ItemOne() => BottomNavigationBarItem(icon: Icon(Icons.face),label: '');

  ListView Menu() {
    return ListView(
      children: [
        FirstList()
      ],
    );
  }

  ListTile FirstList() {
    return ListTile(              
        leading: CircleAvatar(child: SvgPicture.asset('assets/icons/money.svg')),
        title: Text(TitleText().nameTest,),
        subtitle: Text(TitleText().money, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      );
  }

  AppBar AppbarArea() {
    return AppBar(
      centerTitle: true,
      backgroundColor: DrawerColor.transparent,
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.library_add,color: AppbarColor.appbarColor,)), 
      title: AppbarText(),
      actions: [
        AppbarIcon(),
      ],
    );
  }

  Text AppbarText() => Text(TitleText().name, style: TextStyle(color: AppbarColor.appbarColor),);
}

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.attach_money, color: AppbarColor.appbarColor,));
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

class AppbarColor{
  static Color appbarColor = Colors.red;
}