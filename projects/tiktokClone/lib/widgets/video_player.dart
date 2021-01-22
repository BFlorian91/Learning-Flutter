import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerT extends StatefulWidget {
  final String url;

  VideoPlayerT({this.url});
  @override
  _VideoPlayerTState createState() => _VideoPlayerTState();
}

class _VideoPlayerTState extends State<VideoPlayerT> {
  VideoPlayerController _controller;
  bool isPlayed = false;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url);
    _controller.setLooping(true);
    _controller.initialize();
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: InkWell(
          onTap: () {
            setState(() => isPlayed = !isPlayed);
            isPlayed ? _controller.pause() : _controller.play();
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(_controller),
            ]
          ),
        ),
      ),
      padding: EdgeInsets.only(bottom: 30.0),
    );
  }
}
