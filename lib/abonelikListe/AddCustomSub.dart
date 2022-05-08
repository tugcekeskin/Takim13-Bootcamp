import 'package:flutter/material.dart';
import 'package:aboneliksayfasi/abonelikEklemeFormu/abonelik_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCustomSub extends StatefulWidget {
  const AddCustomSub({Key? key}) : super(key: key);

  @override
  State<AddCustomSub> createState() => _AddCustomSub();
}

class _AddCustomSub extends State<AddCustomSub> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(top: 20, right: 20, left: 20),
        color: Color(0xFFFFFFFF),
        height: 80,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              right: 0,
        child:Container(
                height: 60,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
            color: Color(0xFF01395E),),
              child: TextButton(
                onPressed: ()  {
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => AbonelikForm(),
          ),
          );
          },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                  Text('Yeni Abonelik Ekle',
                  style: TextStyle(
                      fontSize: 22.0,fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                  ),
                      textAlign: TextAlign.center,
                ),
                    Align(
                        alignment: Alignment.centerRight,
                    child :
                    Icon(Icons.arrow_forward_ios_sharp,
                    color: Color(0xFFFFFFFF)),
                    )
                  ])
                ),
            ),
          )
        ]),
      );
  }
}
