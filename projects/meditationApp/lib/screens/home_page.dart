import 'package:flutter/material.dart';
import 'package:meditationApp/widgets/audio_player.dart';

import '../data/datas.dart';
import '../models/audio_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<AudioModel> songs = datas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        actions: [Icon(Icons.watch)],
        leading: Icon(Icons.single_bed_sharp),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(datas[index].image), fit: BoxFit.cover),
                ),
                child: Center(
                    child: AudioPlayer(
                  songSelected: songs[index].song,
                )),
              );
            }, childCount: datas.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          )
        ],
      ),
    );
  }
}
