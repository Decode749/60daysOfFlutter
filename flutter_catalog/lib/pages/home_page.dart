import 'package:flutter/material.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final int days = 30 ;
    // ignore: prefer_const_declarations
    final String name = "tuesday";
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world!"),
      ),
        body: Center(
        child : Container(
          child: Text("Welcome to $days of flutter on $name!"),
        ),
        ),
        drawer: Drawer(),
      );
  }
}