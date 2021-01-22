import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerLul extends StatefulWidget {
  final String url;

  VideoPlayerLul({this.url});
  @override
  _VideoPlayerLulState createState() => _VideoPlayerLulState();
}

class _VideoPlayerLulState extends State<VideoPlayerLul> {
  VideoPlayerController _controller;
  bool isPlayed = false;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url);
    _controller.addListener(() {
      setState(() {});
    });
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
              // VideoProgressIndicator(
              //   _controller,
              //   allowScrubbing: true,
              // )
            ],
          ),
        ),
      ),
      padding: EdgeInsets.only(bottom: 30.0),
    );
  }
}
