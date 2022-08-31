import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

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
        // ignore: prefer_const_constructors
        title: Text("hello world!"),
      ),
        body: Center(
        // ignore: avoid_unnecessary_containers
        child : Container(
          child: Text("Welcome to $days of flutter on $name!"),
        ),
        ),
        // ignore: prefer_const_constructors
        drawer: Mydrawer(),
      );
  }
}