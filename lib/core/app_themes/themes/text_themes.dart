import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class TextThemes {
  static TextTheme textTheme() {
    return TextTheme(
      titleLarge: GoogleFontsStyleLoader.textStyle(
        fontSize: 20,
        useAkatab: true,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFontsStyleLoader.textStyle(
        fontSize: 14,
        useAkatab: true,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
