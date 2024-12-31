import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class IconButtonThemes {
  static IconButtonThemeData iconButtonThemeData() {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.kAppThemeColor,
        foregroundColor: AppColors.kPrimaryTextColor,
        minimumSize: const Size(46, 46),
        maximumSize: const Size(46, 46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
