import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback onPressedSeeMore;

  const SectionHeader({
    super.key,
    required this.sectionTitle,
    required this.onPressedSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: textTheme.titleLarge,
        ),
        TextButton(
          onPressed: onPressedSeeMore,
          child: const Text(HomeStrings.kSeeMoreTextButtonText),
        ),
      ],
    );
  }
}
