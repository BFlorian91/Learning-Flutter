import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Center(child: Text('Hello World')),
                );
              }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => 'Oopsi',
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
