import 'package:flutter/material.dart';

class CreateSalon extends StatefulWidget {
  @override
  _CreateSalonState createState() => _CreateSalonState();
}

class _CreateSalonState extends State<CreateSalon> {
  List<String> listOfImages = [
    'assets/images/pp1.jpg',
    'assets/images/pp2.jpg',
    'assets/images/pp3.jpg',
    'assets/images/pp4.jpg',
    'assets/images/pp5.jpg',
    'assets/images/pp6.jpg',
    'assets/images/pp7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List<Widget>.generate(
          listOfImages.length,
          (index) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(listOfImages[index]),
                ),
                Positioned(
                  bottom: 8,
                  right: 2,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
