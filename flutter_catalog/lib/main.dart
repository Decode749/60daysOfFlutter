// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catalog/utils/routes.dart';


void main(){
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,

      routes: {
   
        // ignore: prefer_const_constructors
        "/": (context) => LoginPage(),
 
        // ignore: prefer_const_constructors
        MyRoutes.homeRoute:(context) => HOMEPAGE(),
  
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute:(context) => LoginPage(),

      },
    ); 
  }
}