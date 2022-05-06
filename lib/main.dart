import 'package:aboneliksayfasi/abonelik_sayfasi.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const AbonelikSayfasi(),
    );
  }
}
