import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class TabBarThemes {
  static TabBarTheme tabBarTheme() {
    return TabBarTheme(
      indicatorColor: Colors.transparent,
      dividerColor: Colors.transparent,
      labelColor: AppColors.kPrimaryTextColor,
      unselectedLabelColor: AppColors.kSecondaryTextColor,
      indicator: BoxDecoration(
        color: AppColors.kAppThemeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: GoogleFontsStyleLoader.textStyle(
        fontSize: 14,
        useAkatab: true,
      ),
      tabAlignment: TabAlignment.start,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.zero,
    );
  }
}
