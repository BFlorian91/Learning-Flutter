import 'package:flutter/material.dart';

class Users {
  final String name;
  final String designation;
  final int mutualFriends;
  final int age;
  final String imgUrl;
  final String location;
  bool isLiked;
  bool isSwipedOff;

  Users(
      {@required this.name,
      @required this.designation,
      @required this.mutualFriends,
      @required this.age,
      @required this.imgUrl,
      @required this.location,
      this.isLiked = false,
      this.isSwipedOff = false});
}
