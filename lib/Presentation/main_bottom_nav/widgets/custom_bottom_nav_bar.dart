import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.mainBottomNavController,
  });

  final MainBottomNavController mainBottomNavController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.kCharcoalBlackColor,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          mainBottomNavController.iconPaths.length,
          (index) {
            return Obx(() {
              return _buildBottomNavIcon(
                onTap: () => mainBottomNavController.onChangedIndex(index),
                iconPath: mainBottomNavController.iconPaths[index],
                color: mainBottomNavController.selectedIndex.value == index
                    ? AppColors.kAppThemeColor
                    : AppColors.kGreyishBlueColor,
              );
            });
          },
        ),
      ),
    );
  }

  Widget _buildBottomNavIcon({
    required VoidCallback onTap,
    required String iconPath,
    required Color color,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SvgViewer(
        svgPath: iconPath,
        svgIconColor: color,
      ),
    );
  }
}
