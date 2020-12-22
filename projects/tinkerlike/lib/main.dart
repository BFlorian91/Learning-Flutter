import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinkerlike/providers/feedback_position_provider.dart';

import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => FeedbackPositionProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/homeScreen': (context) => HomeScreen()
          },
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),
      );
}
