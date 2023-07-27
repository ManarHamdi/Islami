import 'package:flutter/material.dart';
import 'package:islami/utits/app_colors.dart';

// abstract class AppTheme {
//   static ThemeData lightTheme=ThemeData(
//     primaryColor: AppColors.primaryColor,
//     scaffoldBackgroundColor: Colors.transparent,
//     appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent , centerTitle: true ,
//     elevation: 0,titleTextStyle: TextStyle(color: AppColors.accentColor,fontWeight: FontWeight.bold,fontSize: 30,)),
//     textTheme: TextTheme(titleMedium: TextStyle(fontSize: 22,fontWeight: FontWeight.bold) // for tirles in settings
//     ,bodySmall:TextStyle(color: Color(0xffB7935F) //for settings,
//           ,
//         ),bodyLarge: TextStyle(color: Colors.black,fontSize: 23 ,
//             fontWeight: FontWeight.w400 ) //for sura  name
//   ),
//   bottomSheetTheme: BottomSheetThemeData());


import 'package:flutter/material.dart';


abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      canvasColor: AppColors.secondColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          bodySmall: TextStyle(
              fontSize: 20,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500),
          // for sura details
          titleSmall: TextStyle(
              fontSize: 14,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold),
          //for language and mode
          titleMedium: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          //for selected bottom sheet
          bodyMedium: TextStyle(fontSize: 20, color: AppColors.secondColor),
          //for unselected bottom sheet
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor), //for numbers of tasbeh
          titleLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.thirdColor)//for elzekr
      ),
      //for sebha)

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 36),
        selectedLabelStyle: TextStyle(fontSize: 13),
        selectedItemColor: AppColors.primaryColor,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: AppColors.thirdColor,
      canvasColor: AppColors.forthColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          bodySmall: TextStyle(
              fontSize: 20,
              color: AppColors.sixthColor,
              fontWeight: FontWeight.w500),
          // for sura details
          titleSmall: TextStyle(
              fontSize: 14,
              color: AppColors.thirdColor,
              fontWeight: FontWeight.bold),
          //for language and mode
          titleMedium: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          //for selected bottom sheet
          bodyMedium: TextStyle(fontSize: 20, color: AppColors.secondColor),
          //for unselected bottom sheet
          bodyLarge:
          TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.thirdColor),// for numbers of tasbeh
          titleLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor) // for elzekr
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(size: 30),
        selectedIconTheme: IconThemeData(size: 36),
        selectedLabelStyle: TextStyle(fontSize: 13),
        selectedItemColor: AppColors.sixthColor,
      ));
}



