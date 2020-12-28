import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _logologin(),
          _textwelcome(),
          _buildTextInputusername(),
          _buildTextInputpassword(),
          _buttonok(),
        ],
      ),
    );
  }

  _logologin() {
    return Container(
      child: Image(
        image: AssetImage('assets/images/foods.jpg'),
      ),
      alignment: Alignment.topCenter,
      height: 300,
      //margin: EdgeInsets.all(60.0),
      //   padding: EdgeInsets.all(20.0),
    );
  }

  _textwelcome() {
    return Container(
      // margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Text(
            "ຍິນດີຕ້ອນຮັບ",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  _buildTextInputusername() {
    return Container(
      child: Column(
        children: <Widget>[TextField()],
      ),
    );
  }

  _buildTextInputpassword() {
    return Container(
      child: Column(
        children: <Widget>[TextField()],
      ),
    );
  }

  _buttonok() {
    return Container(
        child: Column(
      children: <Widget>[RaisedButton(), Text('ຕົກລົງ')],
    ));
  }
}
