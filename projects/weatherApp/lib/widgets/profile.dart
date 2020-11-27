import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatelessWidget {
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('d MMM EEEEEEE');
  final String date = formatter.format(now);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Good\nMorning',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                    color: Colors.white)),
            Container(
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=1'),
                backgroundColor: Colors.transparent,
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  date,
                  style: TextStyle(
                    color: Colors.grey[350],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
          )
        ])
      ]),
    );
  }
}
