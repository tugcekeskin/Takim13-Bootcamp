import 'package:aboneliksayfasi/abonelikListe/abonelik_liste.dart';
import 'package:aboneliksayfasi/abonelik_sayfasi.dart';
import 'package:aboneliksayfasi/butceSayfasi/butce_ilksayfa.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subss',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0
        ),
        
      ),
      debugShowCheckedModeBanner: false,
      home:  AbonelikSayfasi(),
    );
  }
}
