import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TabItem({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.kAppThemeColor
            : AppColors.kCharcoalPlumColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: textTheme.bodyLarge?.copyWith(
          color: isSelected
              ? AppColors.kPrimaryTextColor
              : AppColors.kSecondaryTextColor,
        ),
      ),
    );
  }
}
