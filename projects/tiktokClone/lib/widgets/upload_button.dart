import 'package:flutter/material.dart';
import 'package:tiktokClone/constants/colors.dart';

class UploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 35,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(8.0)
              ),  
            ),
          ),
          Positioned(
            right: 5.0,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
