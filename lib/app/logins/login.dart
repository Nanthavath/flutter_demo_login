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
      body: Container(
        color: Colors.yellow,
        child: ListView(
          children: [
            _logologin(),
            _textwelcome(),
            _buildTextInput(
                Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.black54,
                ),
                "ຊື່ຜູ້ໃຊ້",
                false),
            _buildTextInput(
                Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: Colors.black54,
                ),
                'ລະຫັດ',
                true),
            // _buildTextInputpassword(),
            _buttonok(),
          ],
        ),
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
      padding: EdgeInsets.all(40.0),
    );
  }

  _textwelcome() {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        alignment: Alignment.topCenter,
        child: Text(
          'ຍິນດີຕ້ອນຮັບ',
          style: TextStyle(fontSize: 30),
        ));
  }

  _buildTextInput(Icon prefixIcon, String hintText, bool isPassword) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            prefixIcon: prefixIcon,
            prefixIconConstraints: BoxConstraints(
              minWidth: 75,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide(color: Colors.yellow)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: Colors.yellow),
            )),
      ),
    );
  }

  _buttonok() {
    return Container(
      margin: EdgeInsets.only(left: 120, right: 120),
      // padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          )),
      child: FlatButton(
        onPressed: () => (print("Sign in pressed.")),
        child: Text(
          "ຕົກລົງ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.black54,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
