import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

enum Status { running, stopped, paused }

class AudioProvider extends ChangeNotifier {
  static AudioCache cache = AudioCache();
  AudioPlayer player;

  Status isPlaying = Status.stopped;

  void playerHandler() async {
    isPlaying == Status.running
        ? player.stop()
        : player = await cache.play('sounds/raining.mp3');

    switch (isPlaying) {
      case Status.paused:
        player.resume();
        isPlaying = Status.running;
        break;
      case Status.running:
        player.pause();
        isPlaying = Status.paused;
        break;
      case Status.stopped:
        isPlaying = Status.running;
        break;
    }
  }
}
