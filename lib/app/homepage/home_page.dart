import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('good food'),
      ),
      body: Container(
        child: Column(
          children: [
            _signout(),
          ],
        ),
      ),
    );
  }

  Future<void> proccesssignout() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    var signout = firebaseAuth.signOut();
  }

  _signout() {
    return RaisedButton(
      onPressed: () {
        proccesssignout();
        print('signouted');
      },
      child: Text("sign out"),
    );
  }
}
