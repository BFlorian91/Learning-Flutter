import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

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
      home: FadeTransitionTest(),
    );
  }
}

class FadeTransitionTest extends StatefulWidget {
  @override
  _FadeTransitionState createState() => _FadeTransitionState();
}

class _FadeTransitionState extends State<FadeTransitionTest>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this
    );

    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FadeTransition')),
        body: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            )
          ),
        ));
  }
}
