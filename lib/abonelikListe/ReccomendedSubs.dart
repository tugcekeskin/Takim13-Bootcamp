import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReccomendedSubs extends StatefulWidget {
  const ReccomendedSubs({Key? key}) : super(key: key);

  @override
  State<ReccomendedSubs> createState() => _ReccomendedSubs();
}

class _ReccomendedSubs extends State<ReccomendedSubs> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ReccomendedSubsCard(
            title: "Netflix",
            cardcolor: 0xFFE50914,
          ),
          ReccomendedSubsCard(
            title: "Spotify",
            cardcolor: 0xFF1DB954,
          ),
          ReccomendedSubsCard(
            title: "Youtube Premium",
            cardcolor: 0xFFFF0000,
          ),
          ReccomendedSubsCard(
            title: "Youtube Music",
            cardcolor: 0xFFFF0000,
          ),ReccomendedSubsCard(
            title: "Netflix",
            cardcolor: 0xFFE50914,
          ),
          ReccomendedSubsCard(
            title: "Spotify",
            cardcolor: 0xFF1DB954,
          ),
          ReccomendedSubsCard(
            title: "Youtube Premium",
            cardcolor: 0xFFFF0000,
          ),
          ReccomendedSubsCard(
            title: "Youtube Music",
            cardcolor: 0xFFFF0000,
          )
        ],
      ),
    );
  }
}




class ReccomendedSubsCard extends StatelessWidget {
  const ReccomendedSubsCard({
    required this.title,
    required this.cardcolor,
    Key? key,
  }) : super(key: key);

  final String title;
  final int cardcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      color: Color(0xFFFFFFFF),
      height: 60,
      child: Stack(children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child:FlatButton(
              height: 60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: Color(cardcolor),
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children:<Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                        Text("$title",
                          style: TextStyle(
                            fontSize: 22.0,fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                          textAlign: TextAlign.start,
                        ),]
                      ),
                    Align(
                      alignment: Alignment.centerRight,
                      child :
                      Icon(Icons.arrow_forward_ios_sharp,
                          color: Color(0xFFFFFFFF)),
                    )
                  ])
          ),
        )
      ]),
    );
  }
}
