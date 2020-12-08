import 'package:flutter/material.dart';

import '../models/covid.dart';

class GlobalCard extends StatelessWidget {
  final GlobalStats covidGlobal;
  GlobalCard(this.covidGlobal);
  @override
  Widget build(BuildContext context) {
    // print('GLOBAL CARD HERE !! :${covidGlobal.newConfirmed}');
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
              _cardBuilder(covidGlobal),
            ],
          ),
        ));
  }

  Widget _cardBuilder(GlobalStats global) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            child: Text(
          'World statistics',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ))
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Text('🤒: ${global.newConfirmed.toString()}'),
            Text('🤢: ${global.totalConfirmed.toString()}'),
            Text('💀: ${global.newDeaths.toString()}'),
          ]),
          Column(children: [
            Text('☠️: ${global.totalDeaths.toString()}'),
            Text('😎: ${global.newRecovered.toString()}'),
            Text('😎: ${global.totalRecovered.toString()}'),
          ])
        ],
      )
    ]);
  }
}
