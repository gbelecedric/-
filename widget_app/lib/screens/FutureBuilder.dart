import 'dart:convert';
import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  MyFutureBuilder({this.title, this.url});
  final String title;
  final String url;
  @override
  _MyFutureBuilder createState() => new _MyFutureBuilder();
}

class _MyFutureBuilder extends State<MyFutureBuilder> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(
          "FutureBuilder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container()
    );
  }
}
