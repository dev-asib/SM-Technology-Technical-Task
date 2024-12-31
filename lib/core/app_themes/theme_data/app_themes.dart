import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class AppThemes {
  static ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.kScaffoldBackgroundColor,
      appBarTheme: AppBarThemes.appBarTheme(),
      textTheme: TextThemes.textTheme(),
      inputDecorationTheme: InputDecorationThemes.inputDecorationTheme(),
      iconButtonTheme: IconButtonThemes.iconButtonThemeData(),
      textButtonTheme: TextButtonThemes.textButtonThemeData(),
      tabBarTheme: TabBarThemes.tabBarTheme(),
      dialogBackgroundColor: AppColors.kCharcoalBlackColor,
      dialogTheme: DialogThemes.dialogTheme(),
      elevatedButtonTheme: ElevatedButtonThemes.elevatedButtonThemeData(),
    );
  }
}
