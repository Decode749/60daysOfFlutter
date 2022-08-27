// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height:20.0,
            ),
            Text(
              "Welcome $name ",
            style: TextStyle(
              fontSize:29,
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

                    onChanged: ((value) {
                      name = value;
                      setState(() {});
                    })
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText:"Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
              height:40.0,
            ),

            InkWell(

              onTap: () async {
                setState(() {
                  changeButton = true;
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton?50: 150, 
                
                alignment: Alignment.center,
                // ignore: sort_child_properties_last
                child: changeButton? Icon(
                  Icons.done , color: Colors.white,
                ): Text(
                  "Login",
                  style: TextStyle(
                   color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  // shape:changeButton? BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular( changeButton?50: 8),
                ),
              ),
            ),
      
            // ElevatedButton(
            //   // ignore: sort_child_properties_last
            //   child: Text(
            //     "Sign in"),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(120,30)
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   }
            //   )
              
                ],
              ),
            ),
          ],
          
        ),
      ),
    );
    
  }
}
 