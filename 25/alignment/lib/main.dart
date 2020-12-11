import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AlingmentTest(),
    );
  }
}

class AlingmentTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alignment'),
      ),
      body: Container(
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Alignment .bottomRight', style: TextStyle(backgroundColor: Colors.green),),
                ),
              Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text('Alignment -0.75, -0.75', style: TextStyle(backgroundColor: Colors.amber)),
              ),
                            Align(
                alignment: Alignment(0.90, 0),
                child: Text('Alignment 0.90, 0', style: TextStyle(backgroundColor: Colors.cyan)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
