import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productTitle;

  const ProductCard({
    super.key,
    required this.productImage,
    required this.productTitle,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 220,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(productImage: productImage),
          const Gap(8),
          Expanded(
            child: Text(
              productTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge?.copyWith(
                color: AppColors.kPrimaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
