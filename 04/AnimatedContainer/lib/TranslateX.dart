import 'package:flutter/material.dart';

class TranslateX extends StatefulWidget {
  @override
  _TranslateXState createState() => _TranslateXState();
}

class _TranslateXState extends State<TranslateX> {
  bool _isClicked = false;
  double _transformX = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () {
          setState(() {
            _isClicked = !_isClicked;
            _transformX =
                _transformX != 0 ? 0.0 : MediaQuery.of(context).size.width / 3;
          });
        },
        child: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        curve: Curves.fastOutSlowIn,
        child: Center(
          child: Text(
            'Translate X',
            style: TextStyle(color: Colors.white),
          ),
        ),
        width: _isClicked ? 100 : 150,
        height: 50,
        transform: (Matrix4.translationValues(_transformX, 0, 0)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_isClicked ? 20 : 80),
          color: _isClicked ? Colors.blue : Colors.pink,
        ),
      )),
    ));
  }
}
