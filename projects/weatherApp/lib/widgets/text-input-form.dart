import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextInputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            autofocus: false,
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Paris, London, NewYork...',
                suffixIcon: const Icon(Icons.location_pin, color: Colors.red),
                contentPadding: const EdgeInsets.all(10.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(borderSide: BorderSide())));
  }
}
