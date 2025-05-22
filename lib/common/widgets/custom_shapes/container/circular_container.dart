import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FCircularContainer extends StatelessWidget {
  const FCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = FColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
// Commit at 2022-02-24 16:46:38
// Commit at 2022-10-04 17:46:58
// Commit at 2022-06-09 15:10:51
// Commit at 2023-07-27 09:34:45
// Commit at 2023-04-01 13:20:27
// Commit at 2024-02-02 11:35:43
// Commit at 2024-09-25 18:41:12
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
