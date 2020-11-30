import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  final String errorMessage;

  Error({this.errorMessage});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/boom.webp',
              fit: BoxFit.scaleDown,
            ),
            Text(
              'Error: $errorMessage',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
        ]));
  }
}
