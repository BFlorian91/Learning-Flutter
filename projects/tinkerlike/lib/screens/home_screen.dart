import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/feedback_position_provider.dart';
import '../widgets/user_card_widget.dart';
import '../data/user.dart';
import '../models/users.dart';
import '../widgets/bottom_button_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Users> users = fakeUsers;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppbar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            users.isEmpty
                ? Text('No more users', textAlign: TextAlign.center)
                : Stack(children: users.map(_buildUser).toList()),
            SizedBox(height: 20),
            users.isEmpty ? Container() : ButtonButton()
          ]),
        ),
      );

  Widget _buildAppbar() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.chat, color: Colors.grey),
          SizedBox(width: 16),
        ],
        leading: Icon(Icons.person, color: Colors.grey),
        title: Text(
          'Tinder',
          style: GoogleFonts.indieFlower(
              fontSize: 44,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
      );

  Widget _buildUser(Users user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;
    final provider =
        Provider.of<FeedbackPositionProvider>(context, listen: false);

    return Listener(
      onPointerMove: (pointerEvent) =>
          provider.updatePosition(pointerEvent.localDelta.dx),
      onPointerCancel: (_) => provider.resetPosition(),
      onPointerUp: (_) => provider.resetPosition(),
      child: Draggable(
        child: UserCardWidget(
          user: user,
          isUserInFocus: isUserInFocus,
        ),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(
            user: user,
            isUserInFocus: isUserInFocus,
          ),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => _onDragEnd(details, user),
      ),
    );
  }

  void _onDragEnd(DraggableDetails details, Users user) {
    final minDrag = 100;

    if (details.offset.dx > minDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minDrag) {
      user.isLiked = true;
    }
    if (user.isSwipedOff || user.isLiked) setState(() => users.remove(user));
  }
}
