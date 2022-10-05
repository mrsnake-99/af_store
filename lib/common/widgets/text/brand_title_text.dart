import 'package:af_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class FBrandTitleText extends StatelessWidget {
  const FBrandTitleText({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
  });
  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
      // check which brand sie is requored and set the style

      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
// Commit at 2023-03-01 17:01:54
// Commit at 2024-06-17 10:41:59
// Commit at 2024-09-22 12:28:26
// Commit at 2024-04-05 13:48:46
// Random commit
// Random commit
// Random commit
Random commit
