import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgViewer extends StatelessWidget {
  final String svgPath;
  final double height;
  final double width;
  final Color svgIconColor;

  const SvgViewer({
    super.key,
    required this.svgPath,
    this.height = 50,
    this.width = 50,
    required this.svgIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        svgIconColor,
        BlendMode.srcIn,
      ),
      placeholderBuilder: (context) => const Icon(Icons.broken_image_outlined),
    );
  }
}
