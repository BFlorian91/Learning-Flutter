import 'package:flutter/material.dart';

import '../widgets/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            VideoPlayerLul(url: 'assets/videos/test2.mp4'),
            VideoPlayerLul(url: 'assets/videos/test1.mp4'),
            VideoPlayerLul(url: 'assets/videos/test3.mp4'),
          ]
        )
      ),
    );
  }
}