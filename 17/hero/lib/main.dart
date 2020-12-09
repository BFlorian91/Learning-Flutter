import 'package:flutter/material.dart';
import 'package:hero/secondPage.dart';
import 'package:hero/widgets/photoHero.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        alignment: Alignment.bottomLeft,
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.02,
            child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(children: [
                PhotoHero(
                  photo: 'assets/images/bird.png',
                  width: 100,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SecondPage()));
                  },
                ),
                Text('More about the PwePwe !')
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
