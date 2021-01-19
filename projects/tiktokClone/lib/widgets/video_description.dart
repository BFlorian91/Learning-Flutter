import 'package:flutter/material.dart';
import 'package:tiktokClone/constants/colors.dart';

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
            color: Colors.red[300],
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              '@ElonMusk',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: white,
              ),
            ),
          ),
          Container(
            height: 20.0,
            color: Colors.red[300],
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              '@julia_jeSaisPasQui_ Blablabla Lorem lol...',
              style: TextStyle(
                fontSize: 14.0,
                color: white
              ),
            ),
          ),
          Container(
            height: 20.0,
            color: Colors.red[300],
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              '🎵 PA - @JoycaLeDelire JOY',
              style: TextStyle(
                color: white
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
