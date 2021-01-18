import 'package:flutter/material.dart';
import 'package:tiktokClone/widgets/actions_toolbar.dart';
import 'package:tiktokClone/widgets/bottom_toolbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_topSection, _middleSection, _bottomSection],
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
            _videoDescription,
            _actionsToolbar,
          ],
        ),
      );

  Widget get _bottomSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
            5,
            (index) => Container(
                  width: 40.0,
                  height: 40.0,
                  color: Colors.purple[300],
                )),
      );

  Widget get _videoDescription => Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10.0),
            ),
            Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10.0),
            ),
            Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ),
      );

  Widget get _actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
            5,
            (index) => Container(
              width: 60,
              height: 60,
              color: Colors.blue[300],
              margin: EdgeInsets.only(top: 20.0),
            ),
          ),
        ),
      );
}
