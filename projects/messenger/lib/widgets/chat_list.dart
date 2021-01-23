import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List fakeDatas = [
    {
      'avatar': 'assets/images/pp1.jpg',
      'name': 'Elodie',
      'text': 'It is a long established fact that a reader...',
      'isConnected': true
    },
    {
      'avatar': 'assets/images/pp2.jpg',
      'name': 'Marie',
      'text': 'The point of using Lorem Ipsum is that e...',
      'isConnected': false
    },
    {
      'avatar': 'assets/images/pp3.jpg',
      'name': 'Justine',
      'text': 'It is a long established fact that a reader...',
      'isConnected': false
    },
    {
      'avatar': 'assets/images/pp4.jpg',
      'name': 'Tom',
      'text': 'It is a long established fact that a reader...',
      'isConnected': true
    },
    {
      'avatar': 'assets/images/pp5.jpg',
      'name': 'Alexis',
      'text': 'It is a long established fact that a reader...',
      'isConnected': false
    },
    {
      'avatar': 'assets/images/pp6.jpg',
      'name': 'Melodie',
      'text': 'It is a long established fact that a reader...',
      'isConnected': true
    },
    {
      'avatar': 'assets/images/pp7.jpg',
      'name': 'James',
      'text': 'It is a long established fact that a reader...',
      'isConnected': true
    },
    {
      'avatar': 'assets/images/pp8.jpg',
      'name': 'Louis',
      'text': 'It is a long established fact that a reader...',
      'isConnected': false
    },
    {
      'avatar': 'assets/images/pp9.jpg',
      'name': 'Radjich Coutrapali',
      'text': 'It is a long established fact that a reader...',
      'isConnected': true
    },
    {
      'avatar': 'assets/images/pp10.jpg',
      'name': 'Edouard',
      'text': 'It is a long established fact that a reader...',
      'isConnected': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(4, 10, 4, 0),
        child: ListView(
          children: List<Widget>.generate(
            fakeDatas.length,
            (index) => Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundImage: AssetImage(fakeDatas[index]['avatar']),
                      ),
                      fakeDatas[index]['isConnected']
                          ? Positioned(
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
                          : Container()
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fakeDatas[index]['name'],
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                      Text(fakeDatas[index]['text']),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
