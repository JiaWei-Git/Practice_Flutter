import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'second_page.dart';
import 'DataClass/product.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Product')),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  final Product product = Product(name: 'PS5', desc: '描述內容', price: 20000, stock: 20);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Go to SecondPage'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondePage(product: product,)));
        },
      ),
    );
  }
}
