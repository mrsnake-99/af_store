import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FGridLayout extends StatelessWidget {
  const FGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: FSizes.gridSpacing,
            crossAxisSpacing: FSizes.gridSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
// Commit at 2022-06-22 12:06:50
// Commit at 2023-02-26 17:46:38
// Commit at 2023-02-22 14:21:13
// Commit at 2024-12-04 12:47:20
// Commit at 2024-01-07 16:10:28
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
