import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registor extends StatefulWidget {
  @override
  _Registor createState() => _Registor();
}

String nameString, mailString, pwdString;
_nametxt() {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    padding: EdgeInsets.only(bottom: 10, top: 20),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: 'ຊື່ຜູ້ໃຊ້',
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
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )),
      onChanged: (String value) {
        nameString = value.trim();
      },
    ),
  );
}

_bottonpwd() {
  return Container(
    alignment: Alignment.topCenter,
    margin: EdgeInsets.only(
      left: 20,
      right: 20,
      top: 10,
    ),

    //padding: EdgeInsets.all(20),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'ລະຫັດ',
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
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.white)),
      ),
      onChanged: (String value) {
        pwdString = value.trim();
      },
    ),
  );
}

_registortxt() {
  return Container(
    alignment: Alignment.topCenter,
    padding: EdgeInsets.only(top: 60),
    margin: EdgeInsets.only(bottom: 0),
    child: Text(
      'ລົງທະບຽນ',
      style: TextStyle(
          fontFamily: 'NotoSanLao', fontSize: 26, color: Colors.white),
    ),
  );
}

_gmailtext() {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'ອີເມວ',
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          Icons.mail_outline,
          size: 30,
          color: Colors.black54,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 75),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Colors.yellow),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.yellow)),
      ),
      onChanged: (String value) {
        mailString = value.trim();
      },
    ),
  );
}

_buttonregistor() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 50, right: 50),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50))),
    child: FlatButton(
      onPressed: () {
        print('name = $nameString, email = $mailString, password = $pwdString');
        register();
      },
      child: Text(
        'ລົງທະບຽນ',
        style: TextStyle(color: Colors.black54),
      ),
    ),
  );
}

Future<void> register() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  await firebaseAuth
      .createUserWithEmailAndPassword(email: mailString, password: pwdString)
      .then((respone) {
    print('register success for email = $mailString');
  }).catchError((repone) {
    String title = repone.code;
    String message = repone.message;
    print('title = $title , message = $message');
  });

  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // try {
  //   await firebaseAuth
  //       .createUserWithEmailAndPassword(email: mailString, password: pwdString)
  //       .then((respone) {
  //     print('register success for email = $mailString');
  //   });
  // } on FirebaseAuthException catch (e) {
  //   e.message;
  // }
}

class _Registor extends State<Registor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(
            'Good Food',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoSanLao',
                fontSize: 24),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            _registortxt(),
            _nametxt(),
            _gmailtext(),
            _bottonpwd(),
            _buttonregistor(),
          ],
        ),
      ),
    );
  }
}
