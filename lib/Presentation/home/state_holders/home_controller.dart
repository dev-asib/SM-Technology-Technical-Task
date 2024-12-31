import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final Rx<GlobalKey<FormState>> searchFormKey = GlobalKey<FormState>().obs;
  final Rx<TextEditingController> searchTEController =
      TextEditingController().obs;
  final Rx<PageController> pageController = PageController().obs;

  final RxList<String> tabTitles = [
    'All',
    'Action',
    'Anime',
    'Sci-Fi',
    'Thriller',
  ].obs;

  final RxInt _selectedIndex = 0.obs;

  RxInt get selectedIndex => _selectedIndex;

  void onPageChanged(int index) {
    _selectedIndex.value = index;
  }

  void onTapTab(int index) {
    _selectedIndex.value = index;
    pageController.value.jumpToPage(index);
  }

  @override
  void onClose() {
    searchTEController.value.dispose();
    pageController.value.dispose();
    super.onClose();
  }
}
