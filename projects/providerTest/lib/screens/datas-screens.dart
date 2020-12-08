import 'package:flutter/material.dart';

import '../widgets/search-bar.dart';
import '../widgets/build-cards.dart';


class DatasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: SearchBar(),
          ),
          SizedBox(height: 10),
          BuildCards()
        ],
      ),
    );
  }
}