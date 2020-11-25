import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                title: Text('SliverAppBar'),
              ),
              backgroundColor: Colors.orange,
              expandedHeight: 150.0,
              actions: [
                IconButton(icon: Icon(Icons.help), onPressed: () => null)
              ],
            ),
            SliverList(delegate: SliverChildListDelegate([
              ListTile(
                title: Text('Test 1'),
                enabled: true,
              ),
              ListTile(
                title: Text('Test 2'),
              ),
              ListTile(
                title: Text('Test 3'),
              ),
              ListTile(
                title: Text('Test 4'),
              ),
            ]))
          ],
        )
        ),
    );
  }
}
