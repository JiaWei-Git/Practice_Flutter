import 'package:flutter/material.dart';

class SecondePage extends StatelessWidget {
  final int intVal;
  final String strVal;

  SecondePage({Key key, this.intVal, this.strVal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('intVal:$intVal'), Text('strVal:$strVal')],
        ),
      ),
    );
  }
}
