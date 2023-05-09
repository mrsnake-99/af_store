import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FRoundedContainer extends StatelessWidget {
  const FRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = FSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = FColors.borderPrimary,
      this.backgroundColor,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder
            ? Border.all(
                color: borderColor,
              )
            : null,
      ),
      child: child,
    );
  }
}
// Commit at 2022-06-28 14:27:30
// Commit at 2023-03-09 11:32:57
// Commit at 2023-04-11 17:27:17
// Commit at 2023-12-26 11:48:43
// Commit at 2023-02-22 11:00:19
// Commit at 2023-03-24 17:48:20
// Commit at 2023-10-11 13:10:46
// Commit at 2024-10-15 17:50:57
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
