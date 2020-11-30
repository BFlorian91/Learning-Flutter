import 'package:flutter/material.dart';
import 'package:providerTest/screens/covid-details.dart';
import 'package:providerTest/screens/home-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/covidDetails': (context) => CovidDetails(),
      },
    );
  }
}
