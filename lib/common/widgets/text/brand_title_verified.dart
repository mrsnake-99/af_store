import 'package:af_store/common/widgets/text/brand_title_text.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/enums.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class FBrandTitleVerified extends StatelessWidget {
  const FBrandTitleVerified({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = FColors.brandColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FBrandTitleText(
              title: title,
              maxlines: maxlines,
              textAlign: textAlign,
              brandTextSize: brandTextSize),
        ),
        const SizedBox(
          width: FSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: FSizes.iconXs,
        )
      ],
    );
  }
}
// Commit at 2022-05-02 12:14:54
// Commit at 2022-02-01 13:51:33
// Commit at 2022-08-12 12:43:50
// Commit at 2023-03-15 11:55:31
// Commit at 2023-11-03 16:45:16
// Commit at 2024-05-22 14:21:24
// Commit at 2024-08-08 18:11:41
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
