// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height:20.0,
          ),
          Text("Welcome",
          style: TextStyle(
            fontSize:24,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height:20.0,
          ),

          Padding(
            // padding: const EdgeInsets.all(16.0),
            // you can give symmetric padding 
             padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 39.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText:"Enter username",
                    labelText: "UserName",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText:"Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
            height:20.0,
          ),

          ElevatedButton(
            child: Text("Sign in"),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("hello Nsut");
            }
            )
            
              ],
            ),
          ),
        ],
        
      ),
    );
    
  }
}
 