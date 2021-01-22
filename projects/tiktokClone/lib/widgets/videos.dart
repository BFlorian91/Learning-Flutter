import 'package:flutter/material.dart';

import './video_player.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical, children: [
      Image.asset(
        'assets/images/fire.jpeg',
        fit: BoxFit.fitHeight,
      ),
      VideoPlayerT(url: 'assets/videos/test2.mp4'),
      VideoPlayerT(url: 'assets/videos/test1.mp4'),
      VideoPlayerT(url: 'assets/videos/test3.mp4'),
    ]);
  }
}
