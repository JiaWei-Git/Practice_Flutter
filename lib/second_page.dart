import 'package:flutter/material.dart';
import 'DataClass/product.dart';

class SecondePage extends StatelessWidget {
  final Product product;

  SecondePage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SecondePage"),
        ),
        body: Column(
          children: [
            Text('name:${product.name}'),
            Text('desc:${product.desc}'),
            Text('price:${product.price}'),
            Text('stock:${product.stock}'),
          ],
        ));
  }
}
