import 'package:flutter/material.dart';
import 'package:tiktokClone/constants/colors.dart';

import '../widgets/TextShadow.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.0,
              margin: EdgeInsets.only(top: 10.0),
              child: TextShadow(
                text: '@JustMe',
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
            ),
            Container(
              height: 20.0,
              margin: EdgeInsets.only(top: 10.0),
              child: TextShadow(
                text: '@MasashiWakui Blablabla Lorem ipslol...',
                fontSize: 14.0,
              ),
            ),
            Container(
              height: 20.0,
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Icon(Icons.music_note_sharp, color: white,),
                  TextShadow(text: '24kGoldn - Mood'),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
