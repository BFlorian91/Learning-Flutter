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
        title: Text('fittedBox'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Text('With FittedBox', style: TextStyle(fontSize: 35)),
            FittedBox(
              child: Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Understand With FittedBox",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Image.network(
                          "https://static.hitek.fr/img/actualite/2015/06/fb_futuramawallpaper1024.jpg"),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Column(
            children: [
              Text('Without FittedBox', style: TextStyle(fontSize: 35)),
              Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Understand With FittedBox",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Image.network(
                          "https://static.hitek.fr/img/actualite/2015/06/fb_futuramawallpaper1024.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
