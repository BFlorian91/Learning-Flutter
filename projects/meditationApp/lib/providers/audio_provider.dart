import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

enum Status { resume, soundNotLoaded, paused }

class AudioProvider extends ChangeNotifier {
  static AudioCache cache = AudioCache();
  AudioPlayer player;
  Status isPlaying = Status.soundNotLoaded;

  void playerHandler() async {
    switch (isPlaying) {
      case Status.resume:
        player.resume();
        isPlaying = Status.paused;
        break;
      case Status.paused:
        player.pause();
        isPlaying = Status.resume;
        break;
      case Status.soundNotLoaded:
        player = await cache.play('sounds/raining.mp3');
        isPlaying = Status.paused;
        break;
    }
  }
}
