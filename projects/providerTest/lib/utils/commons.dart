import 'package:flutter/material.dart';

class Commons {
  static Widget customLoading(context, [String message]) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(message),
          SizedBox(height: 20),
          CircularProgressIndicator(),
        ]));
  }

  static Widget customError(context, [String message]) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Image.network(
                  'https://media2.giphy.com/media/jRfK3GAUZrtrv3dO6m/giphy.gif'),
            ),
            Text(
              message,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ));
  }
}
