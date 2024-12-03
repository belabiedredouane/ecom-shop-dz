import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      primaryColor: const Color(0xFF979797).withOpacity(0.1),
      primaryColorDark: Colors.black,
      primaryColorLight: Colors.black,
      canvasColor: kSecondaryColor.withOpacity(0.1),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)),
      textTheme:  TextTheme(
        bodyLarge: const TextStyle(color: kTextColor),
        bodyMedium: const TextStyle(color: kTextColor),
        bodySmall: const TextStyle(color: kTextColor),
        labelLarge: const TextStyle(color: Colors.black54),
        titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        fillColor: Color(0xFFF4F4F4),
        filled: true,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 48),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF4A3298), foregroundColor: Colors.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.white,
      primaryColorDark: const Color(0xFF979797).withOpacity(0.1),
      primaryColorLight: Colors.white,
      canvasColor: const Color(0xFF342F3F),
      scaffoldBackgroundColor: const Color(0XFF1D182A),
      fontFamily: "Muli",
      appBarTheme: const AppBarTheme(
          color: Color(0XFF1D182A),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white)),
      textTheme:  TextTheme(
        bodyLarge: const TextStyle(color: Colors.white),
        bodyMedium: const TextStyle(color: Colors.white),
        bodySmall: const TextStyle(color: Colors.white),
        labelLarge: const TextStyle(color: Colors.white54),
        titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
      ),
       inputDecorationTheme: const InputDecorationTheme(
       floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        fillColor: Color(0xFF342F3F),
        filled: true,
      ), 
      visualDensity: VisualDensity.adaptivePlatformDensity,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 48),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF4A3298), foregroundColor: Colors.white),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0XFF1D182A)),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white)
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(28)),
  borderSide: BorderSide(color: kTextColor),
  gapPadding: 10,
);

const OutlineInputBorder outlineInputBorderDark = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(28)),
  borderSide: BorderSide(color: Colors.grey),
  gapPadding: 10,
);
