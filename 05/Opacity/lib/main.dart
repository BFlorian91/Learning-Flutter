import 'package:flutter/cupertino.dart';
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
      home: MyHomePage(title: 'Flutter Opacity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _isClicked ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 250,
                height: 250,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 40),
            CupertinoButton(
                child: Text('Toggle Opactity'),
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                onPressed: () {
                  setState(() {
                    _isClicked = !_isClicked;
                  });
                })
          ],
        ),
      ),
    );
  }
}
