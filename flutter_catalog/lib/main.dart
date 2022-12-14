import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      themeMode: ThemeMode.light, 
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
      ),
      
      initialRoute: "/Login",

      routes: {
   
        "/": (context) => LoginPage(),
 
        "/Home":(context) => HOMEPAGE(),
  
        "/Login":(context) => LoginPage(),

      },
    ); 
  }
}