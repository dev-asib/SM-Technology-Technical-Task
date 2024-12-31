import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final MainBottomNavController _mainBottomNavController =
      Get.find<MainBottomNavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => _mainBottomNavController
            .screens[_mainBottomNavController.selectedIndex.value],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        mainBottomNavController: _mainBottomNavController,
      ),
    );
  }
}
