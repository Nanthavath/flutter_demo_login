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
            _buildTextInputusername(),
            _buildTextInputusername(),
            // _buildTextInputpassword(),
            // _buttonok(),
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
        // margin: EdgeInsets.all(5.0),
        alignment: Alignment.topCenter,
        child: Text(
          'ຍິນດີຕ້ອງຮັບ',
          style: TextStyle(fontSize: 30),
        ));
  }

  _buildTextInputusername() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            hintText: "ຊື່ຜູ້ໄຊ້",
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.person_outline,
              size: 30,
              color: Colors.black54,
            ),
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

  // _buildTextInputpassword() {
  //   return Container(
  //     child: Column(
  //       children: <Widget>[TextField()],
  //     ),
  //   );
  // }

  // _buttonok() {
  //   return Container(
  //       child: Column(
  //     children: <Widget>[
  //       RaisedButton(),
  //     ],
  //   ));
  // }
}
