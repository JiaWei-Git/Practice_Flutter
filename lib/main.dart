import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          appBar: AppBar(title: Text('First APP')),
          body: RowPage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Text('Example'),
        color: Color.fromARGB(25, 255, 0, 0),
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.only(left: 100, top: 50),
      ),
    );
  }
}

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            "1",
            style: TextStyle(fontSize: 200),
          ),
          color: Colors.amber,
        ),
        Container(
          child: Text("2", style: TextStyle(fontSize: 100)),
          color: Colors.red,
        ),
        Container(
          child: Text("3", style: TextStyle(fontSize: 100)),
          color: Colors.green,
        )
      ],
    );
  }
}
