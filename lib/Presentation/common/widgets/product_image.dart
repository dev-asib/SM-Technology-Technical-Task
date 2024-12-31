import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class ProductImage extends StatelessWidget {
  final String productImage;

  const ProductImage({
    super.key,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return NetworkImageViewer(
      imageUrl: productImage,
      customImageBuilder: (BuildContext context, ImageProvider imageProvider) {
        return Container(
          height: 160,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
        );
      },
    );
  }
}
