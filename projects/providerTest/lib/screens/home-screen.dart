import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:providerTest/widgets/gradient-button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/doctor.png'),
            Container(
                padding: EdgeInsets.all(50),
                height: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Welcome to', style: TextStyle(color: Colors.grey)),
                    Text('COVID 19 Center',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(height: 5),
                    Text(
                        'You can get all information about Covid 19 pandemic frome here. Stay healthy, stay safe!'),
                    SizedBox(height: 10),
                    GradientButton('/covidDetails', 'Discover'),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
