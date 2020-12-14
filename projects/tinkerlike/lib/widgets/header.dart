import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () => null,
          ),
          Text('Tinder',
              style: GoogleFonts.indieFlower(
                  fontSize: 44,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold)
              ),
          IconButton(
            icon: Icon(
              Icons.message,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () => null,
          )
        ],
      ),
    );
  }
}
