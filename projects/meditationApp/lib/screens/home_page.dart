import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/datas.dart';
import '../constant/constant.dart';
import '../models/audio_model.dart';
import '../providers/audio_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<AudioModel> song = datas;

  @override
  Widget build(BuildContext context) {
    AudioProvider audioProvider = Provider.of<AudioProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: fAppBackground,
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
                child: Stack(alignment: Alignment.center, children: [
                  FloatingActionButton(
                    heroTag: song[index].id,
                    onPressed: () {
                      setState(() {
                        audioProvider.actualSongID = song[index].id;
                      });
                      audioProvider.playerHandler(song[index].song);
                    },
                    child: Icon(
                      audioProvider.actualSongID == song[index].id
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
      ),
    );
  }
}
