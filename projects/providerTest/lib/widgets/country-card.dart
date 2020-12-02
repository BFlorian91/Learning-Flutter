import 'package:flutter/material.dart';
import 'package:providerTest/models/covid.dart';

class CountryCard extends StatelessWidget {
  final Countries covidDatas;
  final GlobalStats covidGlobal;

  CountryCard({this.covidDatas, this.covidGlobal});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 150,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(covidDatas.country),
                Text(covidDatas.newConfirmed.toString()),
                Text(covidDatas.newDeaths.toString()),
                Text(covidDatas.totalDeaths.toString()),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20))
          ],
        ),
      ));
  }
}
