import 'package:flutter/material.dart';

class Forgotpwd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          ' Good food ',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
          color: Colors.yellow,
          child: ListView(
            children: <Widget>[],
          )),
    );
  }
}
