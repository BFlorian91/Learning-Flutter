import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Column(
        children: [
          _topSection,
          _middleSection,
          BottomToolbar(),
        ],
      ),
    );
  }

  Widget get _topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15.0),
        color: Colors.yellow[300],
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
