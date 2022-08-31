import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lightTheme(BuildContext context) =>
  ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(
          color: Colors.black,
          ),
          
        // ignore: prefer_const_constructors
        titleTextStyle : TextStyle(
          color:Colors.black,
          fontWeight:FontWeight.bold,
          fontSize:18,
        )
        )
      );

      static ThemeData darkTheme(BuildContext context) =>
      ThemeData(
        brightness:Brightness.dark,
      );
 
}