// import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FRoundedImage extends StatelessWidget {
  const FRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = FSizes.md,
    this.fit = BoxFit.contain,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(FSizes.md)
                : BorderRadius.zero,
            child: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: fit,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => FShimmerEffect(
                            width: width ?? double.infinity,
                            height: height ?? 158),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : Image(fit: fit, image: AssetImage(imageUrl))),
      ),
    );
  }
}
// Commit at 2022-05-07 14:33:02
// Commit at 2022-07-17 12:28:51
// Commit at 2023-02-26 15:07:03
// Commit at 2023-01-22 17:08:49
// Commit at 2024-10-08 11:01:45
// Commit at 2024-10-08 13:30:36
// Commit at 2024-03-22 09:53:56
// Commit at 2024-02-06 14:25:15
// Commit at 2024-09-21 15:09:15
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
