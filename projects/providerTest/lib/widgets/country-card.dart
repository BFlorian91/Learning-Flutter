import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final String _country;
  final String _totalConfirmed;
  final String _totalDeaths;

  CountryCard(this._country, this._totalConfirmed, this._totalDeaths);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      // color: Colors.pinkAccent[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.coronavirus_rounded, size: 50),
            title: Text(
              '$_country',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text('☠️: $_totalDeaths', style: TextStyle(color: Colors.black87),),
            Text('🤮: $_totalConfirmed', style: TextStyle(color: Colors.black87),),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20))
        ],
      ),
    );
  }
}
