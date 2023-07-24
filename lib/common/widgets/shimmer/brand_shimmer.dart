import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class FBrandShimmer extends StatelessWidget {
  const FBrandShimmer({
    super.key,
    this.itemCount = 4,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return FGridLayout(
        mainAxisExtent: 80,
        itemCount: itemCount,
        itemBuilder: (_, __) => const FShimmerEffect(width: 300, height: 80));
  }
}
// Commit at 2022-05-07 12:47:24
// Commit at 2022-02-03 09:47:11
// Commit at 2023-03-01 17:21:13
// Commit at 2023-06-28 09:30:03
// Commit at 2024-09-11 11:28:03
// Commit at 2024-09-04 14:03:36
// Random commit
// Random commit
// Random commit
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
Random commit
Random commit
