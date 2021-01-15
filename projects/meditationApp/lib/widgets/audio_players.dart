import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/datas.dart';
import '../constant/constant.dart';
import '../models/audio_model.dart';
import '../providers/audio_provider.dart';

class AudioPlayer extends StatefulWidget {
  final List<AudioModel> song = datas;
  @override
  _AudioPlayerState createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  @override
  Widget build(BuildContext context) {
    AudioProvider audioProvider = Provider.of<AudioProvider>(context);

    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(datas[index].image), fit: BoxFit.cover),
              ),
              child: Stack(alignment: Alignment.center, children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      audioProvider.actualSongID = widget.song[index].id;
                    });
                    audioProvider.playerHandler(widget.song[index].song);
                  },
                  child: Icon(
                    audioProvider.actualSongID == widget.song[index].id
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                  backgroundColor: fButtonBackground,
                )
              ]),
            );
          }, childCount: datas.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        )
      ],
    );
  }
}
