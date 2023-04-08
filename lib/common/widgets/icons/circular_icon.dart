import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FCircularIcon extends StatelessWidget {
  const FCircularIcon({
    super.key,
    // required this.dark,
    this.height,
    this.width,
    this.size = FSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  // final bool dark;
  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : FHelperFunctions.isDarkMode(context)
                ? FColors.black.withOpacity(0.9)
                : FColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
// Commit at 2022-12-25 16:22:03
// Commit at 2022-06-07 12:40:05
// Commit at 2023-10-07 11:08:16
// Commit at 2023-10-23 12:56:53
// Commit at 2023-07-23 10:04:15
// Commit at 2024-09-22 12:54:02
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
