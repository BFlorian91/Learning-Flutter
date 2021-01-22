import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TextShadow extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  TextShadow({@required this.text, this.fontWeight, this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: white,
          fontSize: fontSize,
          fontWeight: fontWeight,
          shadows: [
            Shadow(
              blurRadius: 8.0,
              color: Colors.black,
              offset: Offset(3.0, 3.0),
            )
          ]),
    );
  }
}
