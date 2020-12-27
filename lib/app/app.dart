import 'package:flutter/material.dart';

import 'logins/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSansLao',
      ),
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}
