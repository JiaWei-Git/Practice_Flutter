import 'package:flutter/material.dart';

class SecondePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPage"),
      ),
      body: _SecodePage(),
    );
  }
}

class _SecodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('返回首頁'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
