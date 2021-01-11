import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/audio_provider.dart';

class AudioPlayer extends StatefulWidget {
  final String songSelected;

  const AudioPlayer({@required this.songSelected});
  @override
  _AudioPlayerState createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  bool isPlaying = false;
  int indexOfClick = 1;

  @override
  Widget build(BuildContext context) {
    AudioProvider audioProvider = Provider.of<AudioProvider>(context);
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(140),
        child: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.grey[200],
                  textColor: Colors.grey[800],
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                    audioProvider.playerHandler(widget.songSelected);
                  },
                  child: Icon(isPlaying
                      ? Icons.pause_circle_filled_rounded
                      : Icons.play_arrow),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
