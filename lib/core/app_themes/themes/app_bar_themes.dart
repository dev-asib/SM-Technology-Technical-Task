import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class AppBarThemes {
  static AppBarTheme appBarTheme() {
    return AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.kAppBarBackgroundColor,
      foregroundColor: AppColors.kAppBarForegroundColor,
      titleTextStyle: GoogleFontsStyleLoader.textStyle(
        fontSize: 20,
        useAkatab: false,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
