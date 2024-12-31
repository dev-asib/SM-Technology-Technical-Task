import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class UIPTV extends StatelessWidget {
  const UIPTV({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutesNames.kMainBottomNavScreen,
      getPages: AppRoutes.appRoutes(),
      initialBinding: AppInitialBinding(),
      theme: AppThemes.themeData(),
    );
  }
}
