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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            children: <Widget>[
              Text('emre')
            ],
          ),
        ),
      ),
    );
  }
}

