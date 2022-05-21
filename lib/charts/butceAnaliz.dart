import 'package:aboneliksayfasi/abonelikListe/AddCustomSub.dart';
import 'package:aboneliksayfasi/abonelikListe/ReccomendedSubs.dart';
import 'package:aboneliksayfasi/abonelikListe/SearchBox.dart';
import 'package:aboneliksayfasi/charts/chartExample.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_svg/flutter_svg.dart';

class ButceAnaliz extends StatelessWidget {
  const ButceAnaliz({Key? key}) : super(key: key);

  static final List<Butce> butceData = [
    Butce('Ocak', 300, Colors.blue),
    Butce('Şubat', 400, Colors.red),
    Butce('Mart', 350, Colors.blue),
    Butce('Nisan', 412, Colors.red),
    Butce('Mayıs', 366, Colors.red),
    Butce('Haziran', 272, Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {

    List<charts.Series<Butce, String>> series = [
      charts.Series(
        data: butceData,
        id:"Butce Analiz",
        domainFn: (Butce pops, _) => pops.ay,
        measureFn: (Butce pops, _) => pops.total,
        colorFn: (Butce pops, _) => charts.ColorUtil.fromDartColor(pops.barColor)
      )
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: charts.BarChart(series),
          ),
        ),
      ),
    );
  }
}

class Butce {
  final String ay;
  final int total;
  final barColor;

  Butce(this.ay, this.total, this.barColor);


}
