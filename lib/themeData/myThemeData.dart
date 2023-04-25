import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Colors.black;
  static const Color darkPrimaryColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        foregroundColor: Colors.black,
        titleSpacing: 20,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        titleTextStyle: GoogleFonts.poppins(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        elevation: 0),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      titleSmall: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
      bodyMedium: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
      bodySmall: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(Colors.black),
      ),
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      foregroundColor: Colors.black,
      backgroundColor: Colors.cyanAccent,
      iconSize: 40,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        foregroundColor: Colors.white,
        titleSpacing: 20,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        titleTextStyle: GoogleFonts.poppins(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        elevation: 0),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      titleSmall: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      bodyLarge: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
      bodySmall: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(Colors.black),
      ),
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      foregroundColor: Colors.black,
      backgroundColor: Colors.cyanAccent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.deepOrange),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    ),
  );
}
