import 'package:flutter/material.dart';
import 'package:meditationApp/providers/audio_provider.dart';
import 'package:provider/provider.dart';

class AudioTest extends StatefulWidget {
  @override
  _AudioTestState createState() => _AudioTestState();
}

class _AudioTestState extends State<AudioTest> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    AudioProvider audioProvider = Provider.of<AudioProvider>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    isPlaying = !isPlaying;
                  });
                  audioProvider.playerHandler();
                },
                child: Icon(isPlaying
                    ? Icons.pause_circle_filled_rounded
                    : Icons.play_arrow),
              )
            ],
          ),
        ),
      ),
    );
  }
}
