import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  Home({Key key, this.user}) : super(key: key);

  final UserCredential user;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Roomie"),
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Hexcolor("#83EAF1"),
        bottomOpacity: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu), color: Colors.black87, onPressed: () {}),
      ),
    );
  }
}
