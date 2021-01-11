import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/audio_provider.dart';
import './screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (_) => AudioProvider(),
      child: MaterialApp(
        title: 'MedApp',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ));
}
