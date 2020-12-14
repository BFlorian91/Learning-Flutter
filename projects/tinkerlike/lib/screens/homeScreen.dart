import 'package:flutter/material.dart';
import 'package:tinkerlike/widgets/bottomBar.dart';
import 'package:tinkerlike/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(color: Colors.white70),
        ),
        Column(
          children: [
            Header(),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/girl1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            BottomBar()
          ],
        ),
      ]),
    ));
  }
}
