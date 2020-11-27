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
        appBar: AppBar(
          title: Text('SliverGram'),
        ),
        body: Products());
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<Map<String, String>> list_item = [
    {'name': 'image 1', 'pic': 'assets/images/1.jpg', 'price': '79'},
    {'name': 'image 2', 'pic': 'assets/images/2.jpg', 'price': '98'},
    {'name': 'image 3', 'pic': 'assets/images/3.jpg', 'price': '90'},
    {'name': 'image 4', 'pic': 'assets/images/4.jpg', 'price': '39'},
    {'name': 'image 5', 'pic': 'assets/images/5.jpg', 'price': '59'},
    {'name': 'image 6', 'pic': 'assets/images/6.jpg', 'price': '239'},
    {'name': 'image 3', 'pic': 'assets/images/1.jpg', 'price': '90'},
    {'name': 'image 4', 'pic': 'assets/images/6.jpg', 'price': '39'},
    {'name': 'image 5', 'pic': 'assets/images/3.jpg', 'price': '59'},
    {'name': 'image 6', 'pic': 'assets/images/4.jpg', 'price': '239'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_item.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Product(list_item[index]['name'], list_item[index]['pic'],
              list_item[index]['price']);
          // return Test(list_item[index]['name'], list_item[index]['pic']);
        });
  }
}

class Product extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;

  Product(this.productName, this.productPicture, this.productPrice);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Hero(
          tag: productName,
          child: Material(
              child: InkWell(
            onTap: () => null,
            child: GridTile(
              footer: Container(
                color: Colors.black12,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  title: Text(
                    '\€ $productPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              child: Image.asset(productPicture, fit: BoxFit.cover),
            ),
          ))),
    );
  }
}

// class Test extends StatelessWidget {
//   final productName;
//   final productPicture;

//   Test(this.productName, this.productPicture);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [Text(productName), Image.asset(productPicture)],
//       ),
//     );
//   }
// }
