import 'package:flutter/material.dart';
import 'package:messenger/widgets/chat_list.dart';
import 'package:messenger/widgets/create_salon.dart';

import '../widgets/search_bar.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _topSection,
              _middleSection,
            ],
          )
        ],
      ),
    );
  }

  Widget get _topSection => Container(
        child: Column(
          children: [
            CustomAppBar(),
            SearchBar(),
            CreateSalon(),
          ],
        ),
      );

  Widget get _middleSection => ChatList();
}
