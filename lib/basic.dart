import 'package:flutter/material.dart';


class ExamplePage extends StatelessWidget {
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

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterLogo(size: 100),
    );
  }
}

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Owen\nLine2\nLine3\n",
        style: TextStyle(
            fontSize: 50,
            color: Colors.red,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold),
        maxLines: 2,
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text(
          "按鈕",
          style: TextStyle(color: Colors.amber),
        ),
        onPressed: btnClickEvent,
        color: Colors.green,
        elevation: 20,
      ),
    );
  }

  void btnClickEvent() {
    print('Click');
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        width: 100,
      ),
    );
  }
}

class TextFieldPage extends StatelessWidget {
  final TextEditingController myController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: TextField(
            enabled: true,
            decoration: InputDecoration(hintText: '請輸入帳號'),
            maxLength: 5,
          ),
        ),
        Center(
          child: TextField(
            obscureText: true,
            enabled: true,
            decoration: InputDecoration(hintText: '請輸入密碼'),
            maxLength: 5,
          ),
        ),
        TextField(
          controller: myController,
          decoration: InputDecoration(hintText: '請輸入文字...'),
        ),
        RaisedButton(
          onPressed: btnEvent,
          child: Text('印出輸入框內容'),
        )
      ],
    );
  }

  void btnEvent() {
    print(myController.text);
  }
}