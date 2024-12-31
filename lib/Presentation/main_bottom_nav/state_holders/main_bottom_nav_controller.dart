import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class MainBottomNavController extends GetxController {
  final RxList<Widget> screens = [
    const HomeScreen(),
    Assignment2Screen(),
    Assignment3Screen(),
    const UserProfileScreen(),
  ].obs;

  final RxList<String> iconPaths = [
    IconsAssetsPaths.kHomeIcon,
    IconsAssetsPaths.kTVIcon,
    IconsAssetsPaths.kDownloadIcon,
    IconsAssetsPaths.kUserIcon,
  ].obs;

  final RxInt _selectedIndex = 0.obs;

  RxInt get selectedIndex => _selectedIndex;

  void onChangedIndex(int index) {
    _selectedIndex.value = index;
  }
}
