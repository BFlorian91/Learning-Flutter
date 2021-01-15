import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditationApp/constant/constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: fAppBackground),
            child: Center(
              child: Text(
              'RelaxApp',
              style: GoogleFonts.spaceMono(color: Colors.white, fontSize: 36.0),
            ),),
          ),
        ],
      ),
    );
  }
}
