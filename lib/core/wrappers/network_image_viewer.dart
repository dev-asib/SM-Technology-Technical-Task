import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class NetworkImageViewer extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Color backgroundColor;
  final double height;
  final double width;

  const NetworkImageViewer({
    super.key,
    required this.imageUrl,
    this.borderRadius = 0.0,
    this.placeholder,
    this.errorWidget,
    this.backgroundColor = Colors.transparent,
    this.customImageBuilder,
    this.height = 100,
    this.width = 100,
  });

  final Widget Function(BuildContext context, ImageProvider imageProvider)?
      customImageBuilder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) {
        if (customImageBuilder != null) {
          return customImageBuilder!(context, imageProvider);
        }
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
      placeholder: (context, url) =>
          placeholder ?? const CenteredCircularProgressIndicator(),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Icon(
            Icons.error,
            color: AppColors.kAppThemeColor,
            size: 40,
          ),
    );
  }
}
