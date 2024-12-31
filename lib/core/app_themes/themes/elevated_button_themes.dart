import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class ElevatedButtonThemes {
  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kAppThemeColor,
        foregroundColor: AppColors.kWhiteTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFontsStyleLoader.textStyle(
          fontSize: 16,
          useAkatab: true,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
