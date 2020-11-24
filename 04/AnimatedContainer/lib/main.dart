import 'package:AnimatedContainer/TranslateX.dart';
import 'package:AnimatedContainer/Rotate.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation Flutter'),
        ),
        body: SafeArea(
            minimum: EdgeInsets.all(10),
            child: Column(
              children: [
                TranslateX(),
                SizedBox(height: 20),
                Rotate(),
                SizedBox(height: 20),
              ],
            )));
  }
}
