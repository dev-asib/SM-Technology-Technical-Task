import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class TextButtonThemes {
  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.kWhiteTextColor,
        textStyle: GoogleFontsStyleLoader.textStyle(
          fontSize: 14,
          useAkatab: false,
        ),
      ),
    );
  }
}
