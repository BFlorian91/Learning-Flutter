import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 50.0,
            child: IconButton(
              icon: Icon(Icons.delete),
              iconSize: 50,
              color: Colors.redAccent,
              onPressed: () => print('Doesn\'t Match'),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 50.0,
            child: IconButton(
              icon: Icon(Icons.favorite),
              iconSize: 50,
              color: Colors.greenAccent,
              onPressed: () => print('It\'s a Match !!!'),
            ),
          ),
        ],
      ),
    );
  }
}
