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
          title: Text('ClipRRect'),
        ),
        body: Container(
            child: Column(children: [
          _buildDesc(context),
          Expanded(child: _buildCard())
        ])));
  }

  Widget _buildDesc(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.03,
      height: 150,
      child: Center(
        child: Card(
          elevation: 20,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                'ClipRReact seems usable for put a image inside and make custom border'),
          ),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return CustomScrollView(slivers: [
      SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.blue[200],
                      child: Image.asset('assets/images/twitter_bird.png'),
                    ),
                  ),
                ),
              );
            },
            childCount: 9,
          ))
    ]);
  }
}
