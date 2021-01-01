import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

_nametxt() {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    padding: EdgeInsets.only(bottom: 5, top: 30),
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
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.yellow),
          )),
    ),
  );
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 65),
          child: Text(
            'ລົງທະບຽນ',
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
            _nametxt(),
          ],
        ),
      ),
    );
  }
}
