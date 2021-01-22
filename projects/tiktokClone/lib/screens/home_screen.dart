import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktokClone/constants/colors.dart';

import '../widgets/videos.dart';
import '../widgets/actions_toolbar.dart';
import '../widgets/bottom_toolbar.dart';
import '../widgets/video_description.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );
    return Scaffold(
      body: Stack(
        children: [
          Videos(),
          Column(
            children: [
              _topSection,
              _middleSection,
              SizedBox(height: 20.0),
              BottomToolbar(),
            ],
          ),
        ],
      ),
    );
  }

  Widget get _topSection => Container(
        height: 150.0,
        width: 150.0,
        padding: EdgeInsets.only(top: 40.0, bottom: 55.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => {},
                child: Container(
                  width: 72.0,
                  child: Stack(
                    children: [
                      Text(
                        'Following',
                        style: TextStyle(color: white),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: primary),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => {},
                child: Text(
                  'For You',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      );

  Widget get _middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            VideoDescription(),
            ActionsToolbar(),
          ],
        ),
      );
}
