import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class CenteredCircularProgressIndicator extends StatelessWidget {
  const CenteredCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.kAppThemeColor,
      ),
    );
  }
}
