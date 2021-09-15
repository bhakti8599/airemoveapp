import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData kLightTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Color(0XFF065479),
    cardColor: Colors.black54,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF065479),
      splashColor: Colors.blueAccent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF065479)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)))),
    ),
    cardTheme: CardTheme(
      elevation: 0,
    ),
    iconTheme: IconThemeData(color: Colors.white70),
    textTheme: TextTheme(
        bodyText2: GoogleFonts.roboto(
          color: Color(0xFFE2E2E2),
        ),
        subtitle2: GoogleFonts.roboto(
          color: Colors.black87,
        ),
        subtitle1: GoogleFonts.roboto(
          color: Colors.black54,
        ),
        headline6: GoogleFonts.roboto(
          color: Colors.white70,
        ),
        bodyText1: GoogleFonts.roboto(
          color: Colors.white70,
        ),
        headline4: GoogleFonts.roboto(color: Colors.white70),
        caption: GoogleFonts.roboto(color: Colors.white70),
        button: GoogleFonts.roboto(
          color: Colors.white70,
        )),
  );
}

final ThemeData kDarkTheme = _buildDarkTheme();

ThemeData _buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.deepPurpleAccent[300],
    accentColor: Colors.blue,
    cardColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black26,
    iconTheme: IconThemeData(color: Colors.white),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xff6807f9),
        splashColor: Colors.deepPurpleAccent),
    textTheme: TextTheme(
        headline6: GoogleFonts.radley(
            color: Colors.white, textStyle: TextStyle(color: Colors.white)),
        bodyText1: GoogleFonts.gabriela(
            color: Colors.white, textStyle: TextStyle(color: Colors.white)),
        bodyText2: GoogleFonts.gabriela(
            color: Colors.white, textStyle: TextStyle(color: Colors.white)),
        headline4: GoogleFonts.acme(
          color: Colors.white,
        ),
        button: GoogleFonts.acme(
          color: Colors.black,
        )),
    cardTheme: CardTheme(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
    ),
  );
}

final ThemeData kAmoledTheme = _buildAmoledTheme();

ThemeData _buildAmoledTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.black,
    accentColor: Colors.white,
    canvasColor: Colors.black45,
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    primaryIconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline6: GoogleFonts.radley(),
      bodyText1: GoogleFonts.gabriela(),
      bodyText2: GoogleFonts.gabriela(),
    ),
  );
}
