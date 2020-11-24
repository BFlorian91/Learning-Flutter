import 'package:flutter/material.dart';

import 'dart:math';

class Rotate extends StatefulWidget {
  @override
  _RotateState createState() => _RotateState();
}

class _RotateState extends State<Rotate> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isClicked = !_isClicked;
          });
        },
        child: Center(
          child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 1500),
          tween: Tween<double>(begin: 0, end: _isClicked ? 2 * pi : 0),
          builder: (_, double angle, __) {
            return Transform.rotate(
              angle: angle,
              child: Container(
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                    'Rotate',
                    style: TextStyle(color: Colors.white)
                  )
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.blue,
                )
              )
            );
          },
        )),
      ),
    );
  }
}
