import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherApp/widgets/bottomNavBar.dart';

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
                colors: [Colors.blue[300], Colors.blue[700]])),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 90,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            child: Text('Start'),
                            color: Colors.white30,
                            onPressed: () {
                              Navigator.pushNamed(context, '/weather');
                            })
                      ],
                    ),
                  )),
              Expanded(flex: 10, child: BottomNavBar())
            ],
          ),
        ),
      ),
    );
  }
}
