import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຫນ້າເຂົ້າສູ່ລະບົບ'),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage('assets/images/foods.jpg'),
          ),
          _buildTextInput(),
        ],
      ),
    );
  }

  _buildTextInput() {
    return TextField();
  }
}
