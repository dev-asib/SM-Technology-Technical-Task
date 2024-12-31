import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class DialogThemes {
  static DialogTheme dialogTheme() {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: GoogleFontsStyleLoader.textStyle(
        fontSize: 20,
        useAkatab: true,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: GoogleFontsStyleLoader.textStyle(
        fontSize: 16,
        useAkatab: true,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
