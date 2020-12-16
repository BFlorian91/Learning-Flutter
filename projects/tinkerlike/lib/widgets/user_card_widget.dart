import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/users.dart';
import '../providers/feedback_position_provider.dart';

class UserCardWidget extends StatelessWidget {
  final Users user;
  final bool isUserInFocus;

  const UserCardWidget({@required this.user, @required this.isUserInFocus});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FeedbackPositionProvider>(context);
    final swipingDirection = provider.getSwipingDirection;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.7,
      width: size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(user.imgUrl), fit: BoxFit.cover),
      ),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 0.5),
        ]),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              left: 10,
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildUserInfo(user: user),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16, right: 8),
                    child: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            if (isUserInFocus) _buildLikeBadge(swipingDirection)
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo({@required Users user}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}, ${user.age}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(user.designation, style: TextStyle(color: Colors.white)),
            SizedBox(height: 4),
            Text(
              '${user.mutualFriends} Mutual Friends',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );

  Widget _buildLikeBadge(SwipingDirection swipingDirection) {
    final isSwipingRight = swipingDirection == SwipingDirection.right;
    final color = isSwipingRight ? Colors.green : Colors.pink;
    final angle = isSwipingRight ? -0.5 : 0.5;

    if (swipingDirection == SwipingDirection.none) {
      return Container();
    }
    return Positioned(
      top: 20.0,
      right: isSwipingRight ? null : 20.0,
      left: isSwipingRight ? 20.0 : null,
      child: Transform.rotate(
        angle: angle,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
          ),
          child: Text(
            isSwipingRight ? 'LIKE' : 'NOPE',
            style: TextStyle(
              color: color,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
