import 'package:flutter/material.dart';

class SecondePage extends StatelessWidget {
  final int intVal;
  final String strVal;

  SecondePage({Key key, this.intVal, this.strVal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondePage"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Return Home Page'),
          onPressed: () {
            Navigator.pop(context, 'Return some Data....');
          },
        ),
      ),
    );
  }
}
