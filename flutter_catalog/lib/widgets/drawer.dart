// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer  extends StatelessWidget {
  const Mydrawer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_declarations
    final imageUrl =
     "https://ichef.bbci.co.uk/news/976/cpsprodpb/F382/production/_123883326_852a3a31-69d7-4849-81c7-8087bf630251.jpg";
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              accountEmail: Text("nsut@gmail.com"),
               accountName: Text("durgesh"),
               currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
               ),
              ),
              ),
              ListTile(
                leading: Icon(
                CupertinoIcons.home , 
                color:Colors.white),
                title : Text("Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
              ),

              ListTile(
                leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.white),
                title : Text("Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
              ),

              ListTile(
                leading: Icon(
                CupertinoIcons.mail, 
                color:Colors.white),
                title : Text("Email",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
              )
          ],
        ),
      ),
    );
  }
}