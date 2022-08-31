// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  moveToHome (BuildContext context) async {
    if(_formKey.currentState!.validate()){

    
    setState(() {
                      changeButton = true;
                    });
              
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton = false;
                    });
    }
  }

  String name = "";
  bool changeButton = false;
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image2.png",
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
                    TextFormField(
                      decoration: InputDecoration(
                        hintText:"Enter username",
                        labelText: "UserName",
                      ),
                      
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }

                        return null;
                      },
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      })
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText:"Enter password",
                        labelText: "Password",
                      ),
                       validator: (value) {
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        else if (value.length < 6){
                          return "password length should be atleast 6 ";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                height:40.0,
              ),
        
              Material(
                color : Colors.green,
                borderRadius: BorderRadius.circular( changeButton?50: 8),
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton?50: 150, 
                    height: 50 ,
                    alignment: Alignment.center,
                    // ignore: sort_child_properties_last
                    child: changeButton? Icon(
                      Icons.done , color: Colors.white,
                    ): Text(
                      "Login",
                      style: TextStyle(
                       color: Color.fromARGB(255, 123, 16, 16),
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    
                  ),
                ),
              ),
                
                  ],
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
    
  }
}
 