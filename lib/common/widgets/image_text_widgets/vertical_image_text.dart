import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FVerticalImageText extends StatelessWidget {
  const FVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = FColors.white,
    this.backgroundColor,
    this.onTap,
    this.isNetworkImage = true,
    this.fit = BoxFit.cover,
    this.overlayColor,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final Color? overlayColor;
  final bool isNetworkImage;
  final BoxFit? fit;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: FSizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //circular icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(FSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (FHelperFunctions.isDarkMode(context)
                        ? FColors.dark
                        : FColors.light),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: isNetworkImage
                      ? CachedNetworkImage(
                          fit: BoxFit.cover,
                          color: dark ? FColors.white : FColors.black,
                          imageUrl: image,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  const FShimmerEffect(
                            width: 55,
                            height: 55,
                            radius: 55,
                          ),
                          // errorWidget: (context, url, error) => const Icon(
                          //   Icons.error,
                          // ),
                        )
                      : Image(
                          image: AssetImage(image),
                          fit: fit,
                          color: dark ? FColors.white : FColors.black),
                ),
              ),
            ),

            ///text
            const SizedBox(height: FSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Commit at 2022-11-18 15:03:33
// Commit at 2022-03-17 10:57:22
// Commit at 2022-01-26 12:56:32
// Commit at 2022-10-16 15:36:29
// Commit at 2023-12-19 18:06:22
// Commit at 2023-03-09 17:14:06
// Commit at 2023-03-05 17:29:35
// Commit at 2023-12-08 14:36:21
// Commit at 2023-07-26 09:57:44
// Random commit
// Random commit
// Random commit
