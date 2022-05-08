import 'package:aboneliksayfasi/abonelikListe/AddCustomSub.dart';
import 'package:aboneliksayfasi/abonelikListe/ReccomendedSubs.dart';
import 'package:aboneliksayfasi/abonelikListe/SearchBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AbonelikListe extends StatefulWidget {
  const AbonelikListe({Key? key}) : super(key: key);

  @override
  State<AbonelikListe> createState() => _AbonelikListeState();
}

class _AbonelikListeState extends State<AbonelikListe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          children: <Widget>[
            SearchBox(),
            AddCustomSub(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    child: Text('Abonelik Seçin',
                      style: TextStyle(
                        fontSize: 22.0,fontWeight: FontWeight.bold,
                        color: Color(0xFF9B9D9C),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    ),
                ),
                ),
              ReccomendedSubs(),
            ],
        ),
      ),
      ),
    );
  }
}

