import 'package:flutter/material.dart';
import 'package:hero/widgets/photoHero.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            child: PhotoHero(
              photo: 'assets/images/bird.png',
              width: 300,
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Card(
              elevation: 10,
              child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(children: [
                Text(
                  'The PwePwe !!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet aliquam felis, id fermentum dolor. Suspendisse ac lorem sed tortor porta bibendum.\n\n Aliquam commodo metus sit amet enim luctus, id malesuada nulla rutrum. Donec bibendum massa vitae nisi sagittis, quis pellentesque sapien consequat.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)
                )
              ]),
            ),
          ),),
        ]),
      ),
    );
  }
}
