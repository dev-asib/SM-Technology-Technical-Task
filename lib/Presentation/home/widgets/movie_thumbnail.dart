import 'package:flutter/material.dart';

class MovieThumbnail extends StatelessWidget {
  const MovieThumbnail({
    super.key,
    required this.thumbnailPath,
    required this.height,
    required this.width,
  });

  final String thumbnailPath;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(thumbnailPath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
