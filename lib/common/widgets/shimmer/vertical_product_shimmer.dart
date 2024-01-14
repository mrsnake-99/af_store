import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FVerticalProductShimmer extends StatelessWidget {
  const FVerticalProductShimmer({
    super.key,
    this.itemCount = 4,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return FGridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => const SizedBox(
        width: 100,
        child: Column(
          children: [
            //image
            FShimmerEffect(width: 180, height: 180),
            SizedBox(height: FSizes.spaceBtwItems),

            //text
            FShimmerEffect(width: 160, height: 15),
            SizedBox(height: FSizes.spaceBtwItems / 2),
            FShimmerEffect(width: 110, height: 15),
          ],
        ),
      ),
    );
  }
}
// Commit at 2023-07-10 12:34:19
// Commit at 2023-12-24 15:25:02
// Commit at 2023-05-12 18:10:40
// Commit at 2023-09-09 11:39:48
// Commit at 2024-07-06 17:20:37
// Commit at 2024-07-07 12:23:36
// Commit at 2024-07-07 09:31:08
// Commit at 2024-02-11 17:33:17
// Commit at 2024-04-01 15:10:26
// Random commit
// Random commit
Random commit
