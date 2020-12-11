import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  List<String> _values = ['One', 'Two', 'Three', 'Four', 'Five'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dismissible'),
      ),
      body: ListView.separated(
          itemCount: _values.length,
          padding: const EdgeInsets.all(5.0),
          separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key('item ${_values[index]}'),
              onDismissed: (DismissDirection direction) {
                if (direction == DismissDirection.startToEnd) {
                  print("Add to favorite");
                } else {
                  print('Remove item');
                }

                setState(() {
                  _values.removeAt(index);
                });
              },
              child: ListTile(
                leading: Icon(Icons.local_activity, size: 50),
                title: Text(_values[index]),
                subtitle: Text('Description here'),
              ),
            );
          }),
    );
  }
}
