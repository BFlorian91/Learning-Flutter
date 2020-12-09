import 'package:flutter/material.dart';

import '../models/covid.dart';

class CountryCard extends StatelessWidget {
  final Countries covidCountry;

  CountryCard(this.covidCountry);

  @override
  Widget build(BuildContext context) {
      // print('DEBUG CARD: $covidCountry');
    return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        height: 120,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
              _cardBuilder(covidCountry)
            ],
          ),
        ));
  }

  Widget _cardBuilder(Countries countries) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Text(
            countries.country,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(color: Colors.black87,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('🤢: ${countries.newConfirmed.toString()}'),
              Text('💀: ${countries.newDeaths.toString()}'),
              Text('☠️: ${countries.totalDeaths.toString()}'),
            ],
          ))
      ],
    );
  }

  
}
