import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/pp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Chats',
            style: TextStyle(
              color: black,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(Icons.edit, color: black,)
        ],
      ),
    );
  }
}
