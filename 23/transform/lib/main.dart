import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Transform'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final random = Random();
  double _angle = 0;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _angle,
      origin: Offset(50.0, -50.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            child: CupertinoButton(
              child: Text('Fuck this Screens !!'),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _angle = random.nextDouble();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
