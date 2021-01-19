import 'package:flutter/material.dart';

import './tiktok_icons.dart';
import '../constants/colors.dart';
import './upload_button.dart';

class BottomToolbar extends StatelessWidget {
  static const List bottomIcons = [
    {'icon': TikTokIcons.home, 'label': 'home', 'isIcon': true},
    {'icon': TikTokIcons.search, 'label': 'Discover', 'isIcon': true},
    {'icon': '', 'label': '', 'isIcon': false},
    {'icon': TikTokIcons.messages, 'label': 'Inbox', 'isIcon': true},
    {'icon': TikTokIcons.profile, 'label': 'Me', 'isIcon': true},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(color: appBgColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List<Widget>.generate(bottomIcons.length, (index) {
            return bottomIcons[index]['isIcon']
                ? InkWell(
                    onTap: () => print('Button is pressed...'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          bottomIcons[index]['icon'],
                          color: white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            bottomIcons[index]['label'],
                            style: TextStyle(color: white, fontSize: 10.0),
                          ),
                        )
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () => print('Upload something...'),
                    child: UploadButton(),
                  );
          }),
        ),
      ),
    );
  }
}
