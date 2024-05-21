import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FCircularImage extends StatelessWidget {
  const FCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 54,
    this.height = 56,
    this.padding = FSizes.sm,
    this.color,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final Color? color;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (FHelperFunctions.isDarkMode(context)
                ? FColors.dark
                : FColors.light),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isNetworkImage
              ? CachedNetworkImage(
                  fit: fit,
                  color: overlayColor,
                  imageUrl: image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      const FShimmerEffect(
                    width: 55,
                    height: 55,
                    radius: 55,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image(
                  fit: fit,
                  image: AssetImage(image),
                  // image: isNetworkImage
                  //     ? NetworkImage(image)
                  //     : AssetImage(image) as ImageProvider,
                  color: overlayColor,
                ),
        ),
      ),
    );
  }
}
// Commit at 2022-06-06 16:28:36
// Commit at 2023-10-09 18:09:31
// Commit at 2023-01-23 11:44:24
// Commit at 2024-04-10 10:12:48
// Commit at 2024-09-26 18:16:50
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
