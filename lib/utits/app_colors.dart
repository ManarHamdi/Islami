import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor=Color(0xffB7935F);
  static const  accentColor=Color(0xff242424);
  static const Color primaryColors=Colors.black;
  static const Color secondColor=Color.fromARGB(255, 168, 120, 50);
  static const Color thirdColor=Colors.white;
  static const Color forthColor=Color.fromARGB(255, 32, 32, 96);
  static const Color fifthColor=Color.fromARGB(255, 27, 27, 86);
  static const Color sixthColor=Color.fromARGB(255, 232, 167, 5);
  static ThemeData LightMode=ThemeData(
      primaryColor: primaryColor,
  accentColor: accentColor,
    appBarTheme: AppBarTheme(elevation: 0 ,backgroundColor: Colors.transparent,centerTitle: true ,
        titleTextStyle: TextStyle(color: Colors.black ,
        fontWeight: FontWeight.bold,fontSize: 30)),
      textTheme: TextTheme(subtitle1: TextStyle(color: Colors.orange) )
      );
}
