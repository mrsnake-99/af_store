import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FShimmerEffect extends StatelessWidget {
  const FShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  final double width;
  final double height;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? FColors.darkerGrey : FColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
// Commit at 2022-02-18 09:44:30
// Commit at 2023-07-11 13:25:50
// Commit at 2023-06-21 16:32:33
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
// Random commit
