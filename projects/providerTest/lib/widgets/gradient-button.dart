import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String pathName;
  final String name;

  GradientButton(this.pathName, this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.5, 1],
          colors: [Colors.pink[300], Colors.pink[100]],
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.0)

      ),
      child: FlatButton(
        child: Text(name, style: TextStyle(color: Colors.white)),
        onPressed: () => Navigator.pushNamed(context, '$pathName'),
      ),
    );
  }
}
