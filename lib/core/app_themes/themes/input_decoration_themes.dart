import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class InputDecorationThemes {
  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      border: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      errorBorder: _outlineInputBorder(),
      focusedErrorBorder: _outlineInputBorder(),
      suffixIconColor: AppColors.kGreyishBlueColor,
      hintStyle: GoogleFontsStyleLoader.textStyle(
        fontSize: 14,
        useAkatab: true,
        color: AppColors.kSecondaryTextColor,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
    );
  }

  static OutlineInputBorder _outlineInputBorder(
      [Color? color = AppColors.kGreyishBlueColor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(
        width: 2,
        color: color!,
      ),
    );
  }
}
