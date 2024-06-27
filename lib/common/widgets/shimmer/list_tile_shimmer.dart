import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class FListTileShimmer extends StatelessWidget {
  const FListTileShimmer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            FShimmerEffect(
              width: 100,
              height: 50,
              radius: 50,
            ),
            SizedBox(width: FSizes.spaceBtwItems),
            Column(
              children: [
                FShimmerEffect(width: 100, height: 15),
                SizedBox(height: FSizes.spaceBtwItems / 2),
                FShimmerEffect(width: 80, height: 12)
              ],
            )
          ],
        )
      ],
    );
  }
}
// Commit at 2022-07-16 13:33:21
// Commit at 2023-07-03 16:15:00
// Commit at 2024-09-16 16:35:08
// Commit at 2024-04-10 17:45:01
// Commit at 2024-01-08 15:03:12
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
