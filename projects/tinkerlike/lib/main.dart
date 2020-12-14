import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/splashScreen.dart';
import './providers/apiProvider.dart';
import './screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/homeScreen': (context) {
          return ChangeNotifierProvider(
            create: (_) => ApiProvider(),
            child: HomeScreen(),
          );
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
