import 'package:flutter/material.dart';

class Registor extends StatefulWidget {
  @override
  _Registor createState() => _Registor();
}

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
    ),
  );
}

_registortxt() {
  return Container(
    alignment: Alignment.topCenter,
    padding: EdgeInsets.only(top: 30),
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
          Icons.lock_outline,
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
    ),
  );
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
          ],
        ),
      ),
    );
  }
}
