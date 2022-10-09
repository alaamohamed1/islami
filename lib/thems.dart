import 'package:flutter/material.dart';

class MyThemeData {
  static Color standrColor = Color(0xFFB7935F);
  static Color standrColorDrk = Color(0xFF141B30);
  static Color YellowColor = Color(0xFFA98D2E);
  static Color BlackColor = Color(0XFF242424);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: standrColor,
      canvasColor: standrColor,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: Color(0XFF242424),
            fontSize: 30,
            fontWeight: FontWeight.w700),
        headline2: TextStyle(
            color: Color(0XFF242424),
            fontSize: 25,
            fontWeight: FontWeight.w400),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: BlackColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: BlackColor,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: standrColorDrk,
      canvasColor: standrColor,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
        headline2: TextStyle(
            color: YellowColor, fontSize: 25, fontWeight: FontWeight.w400),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: YellowColor,
        unselectedItemColor: Colors.white,
      ));
}
