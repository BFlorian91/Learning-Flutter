import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerTest/providers/api-provider.dart';

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
        '/covidDetails': (context) {
          return ChangeNotifierProvider(
            create: (_) => ApiProvider(),
            child: CovidDetails(),
          );
        }
      },
    );
  }
}
