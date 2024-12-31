import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class GoogleFontsStyleLoader {
  static TextStyle textStyle({
    required double fontSize,
    required bool useAkatab,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return useAkatab
        ? GoogleFonts.akatab(
            color: color ?? AppColors.kPrimaryTextColor,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fontSize,
          )
        : GoogleFonts.roboto(
            color: color ?? AppColors.kPrimaryTextColor,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fontSize,
          );
  }
}
