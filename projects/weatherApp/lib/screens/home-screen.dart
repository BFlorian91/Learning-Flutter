import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherApp/widgets/text-input-form.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 1],
                    colors: [Colors.blue[300], Colors.blue[900]])),
            child: Container(
              padding: EdgeInsets.all(40),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextInputForm(),
                  SizedBox(height: 20),
                  CupertinoButton(
                      child: Text('Start'),
                      color: Colors.white30,
                      onPressed: () {
                        Navigator.pushNamed(context, '/weather');
                      })
                ]))));
  }
}
