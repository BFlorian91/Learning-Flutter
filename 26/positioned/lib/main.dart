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
      home: FlPositioned(),
    );
  }
}

class FlPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 200,
              left: 75,
              height: 105,
              width: 105,
              child: Image.network(
                  'https://img.igen.fr/2017/2/macgpic-1487794681-32564258958959-sc-jpt.jpg'),
            ),
            Positioned(
              bottom: 50,
              right: 25,
              height: 105,
              width: 105,
              child: Image.network(
                  'https://img.igen.fr/2017/2/macgpic-1487794681-32564258958959-sc-jpt.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
