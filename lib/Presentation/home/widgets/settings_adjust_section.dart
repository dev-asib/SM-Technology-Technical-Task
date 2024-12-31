import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class SettingsAdjustSection extends StatelessWidget {
  const SettingsAdjustSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => alertMessage(context),
      icon: const SvgViewer(
        svgPath: IconsAssetsPaths.kSettingsAdjust,
        svgIconColor: AppColors.kWhiteTextColor,
      ),
    );
  }
}
