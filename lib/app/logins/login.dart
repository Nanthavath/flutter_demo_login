import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demoapp/app/homepage/home_page.dart';

void main() {
  runApp(Login());
}

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
          children: <Widget>[
            _logologin(),
            _textwelcome(),
            _textuserlogin(),
            _textpasswordlogin(),
            _registor(),
            // _buildTextInput(
            //     Icon(
            //       Icons.person_outline,
            //       size: 30,
            //       color: Colors.black54,
            //     ),
            //     "ຊື່ຜູ້ໃຊ້",
            //     false),
            // _buildTextInput(
            //     Icon(
            //       Icons.lock_outline,
            //       size: 30,
            //       color: Colors.black54,
            //     ),
            //     'ລະຫັດ',
            //     true),
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
      // alignment: Alignment.topCenter,
      height: 290,
      //margin: EdgeInsets.all(60.0),
      padding: EdgeInsets.all(30.0),
    );
  }

  _textwelcome() {
    return Container(
        alignment: Alignment.topCenter,
        child: Text('ຍິນດີຕ້ອນຮັບ',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'NotoSanLao',
              color: Colors.white,
            )));
  }

  Widget _textuserlogin() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(bottom: 10, top: 5),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'username',
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

  _textpasswordlogin() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'password',
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.lock_outline,
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

  _registor() {
    return Container(
      alignment: Alignment.centerRight,
      //  padding: EdgeInsets.symmetric(horizontal: 35),
      child: FlatButton(
        child: Text('ລົງທະທຽນ',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'NotoSanLao',
                decoration: TextDecoration.underline)),
        onPressed: () {
          print('click registor');
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => Homepage());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
      padding: EdgeInsets.only(right: 35),
    );
  }

  // _buildTextInput(Icon prefixIcon, String hintText, bool isPassword) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 30),

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
