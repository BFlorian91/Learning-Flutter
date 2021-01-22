import 'package:flutter/material.dart';
import 'package:tiktokClone/constants/colors.dart';
import 'package:tiktokClone/widgets/tiktok_icons.dart';

enum iconType { isIcon, isProfilePicture, isAlbumPicture, isTripleDots }

class ActionsToolbar extends StatelessWidget {
  final List rightPannelIcons = [
    {'icon': '', 'isIcon': iconType.isProfilePicture},
    {'icon': TikTokIcons.heart, 'count': 123, 'isIcon': iconType.isIcon},
    {'icon': TikTokIcons.chatBubble, 'count': 67, 'isIcon': iconType.isIcon},
    {'icon': TikTokIcons.reply, 'count': 9, 'isIcon': iconType.isIcon},
    {'icon': TikTokIcons.dots, 'isIcon': iconType.isTripleDots},
    {'icon': TikTokIcons.heart, 'isIcon': iconType.isAlbumPicture},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: MediaQuery.of(context).size.height / 2.3, /// Pas ouff need update !!!
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
          rightPannelIcons.length,
          (index) {
            switch (rightPannelIcons[index]['isIcon']) {
              case iconType.isIcon:
                return InkWell(
                    onTap: () => print('rightbutton pressed...'),
                    child: _iconsBuilder(index));
                break;
              case iconType.isProfilePicture:
                return InkWell(
                  onTap: () => print('NotButton press rignt...'),
                  child: _profilePicture,
                );
                break;
              case iconType.isAlbumPicture:
                return InkWell(
                  onTap: () => print('Album button pressed ...'),
                  child: _albumPicture,
                );
              default:
                return InkWell(
                  onTap: () => print('tripleDots pressed ...'),
                  child: Icon(
                    rightPannelIcons[index]['icon'],
                    color: white,
                  ),
                );
            }
          },
        ),
      ),
    );
  }

  Widget get _profilePicture => Container(
        width: 50,
        height: 60,
        child: Stack(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: white),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/pp.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 3,
              left: 18,
              child: Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: primary),
                child: Icon(
                  Icons.add,
                  color: white,
                  size: 15,
                ),
              ),
            )
          ],
        ),
      );

  Widget _iconsBuilder(int index) => Container(
        width: 50,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              rightPannelIcons[index]['icon'],
              color: white,
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                rightPannelIcons[index]['count'].toString(),
                style: TextStyle(
                    color: white, fontSize: 12.0, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      );

  Widget get _albumPicture => Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black38),
            ),
            Center(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/24kGoldn.png'),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      );
}
