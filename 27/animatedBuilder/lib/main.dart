import 'package:flutter/material.dart';
import 'dart:math';

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
      home: FlAnimatedBuilder(),
    );
  }
}

class FlAnimatedBuilder extends StatefulWidget {
  @override
  _FlAnimatedBuilderState createState() => _FlAnimatedBuilderState();
}

class _FlAnimatedBuilderState extends State<FlAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) {
          return Center(
            child: Transform.rotate(
              angle: _controller.value * 2.0 * pi,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
