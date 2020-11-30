import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherCard extends StatelessWidget {
  final String cityName;
  final double degree;
  final String weather;

  String convertKtoC(double degree) {
    final String result = (degree - 273.15).toString();
    return result.substring(0, result.indexOf('.'));
  }

  WeatherCard({this.cityName, this.degree, this.weather});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 220,
        width: double.maxFinite,
        child: Card(
            color: Colors.blue[100],
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  flex: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          cityName,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          '${convertKtoC(degree)} ºC',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                              fontSize: 42,
                              color: Colors.indigo[700]),
                        )
                      ]),
                ),
                Expanded(
                    flex: 50,
                    child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Image.asset(
                              'assets/images/sun.png',
                              fit: BoxFit.cover,
                            ))
                      ],
                    )),
              ]),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      height: 60,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text('Hello World', textAlign: TextAlign.center,),
                      ))
                ],
              )
            ])));
  }
}
