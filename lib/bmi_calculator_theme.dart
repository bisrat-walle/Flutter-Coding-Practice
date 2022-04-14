import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: Colors.white.withOpacity(0.5),
        ),
    );

ThemeData bmiTheme = ThemeData(
    brightness: Brightness.dark,
    checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
            (states) {
                return Colors.black;
            },
        ),
    ),
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
    ),
    textTheme: textTheme,
);