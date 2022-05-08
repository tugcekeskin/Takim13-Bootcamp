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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Container(
                    height: 120,
                    width: 120,
                    decoration:
                    const BoxDecoration(
                      color: Color(0xFF9B9D9C),
                      shape: BoxShape.circle,
                ),
                  alignment: Alignment.center,
                  child:
                  const Text('T',
                    style: TextStyle(
                      fontSize: 72.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                  ),
              ),
              ),
            ],
          ),
        ),
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

