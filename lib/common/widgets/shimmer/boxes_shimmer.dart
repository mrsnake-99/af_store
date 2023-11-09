import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class FBoxesShimmer extends StatelessWidget {
  const FBoxesShimmer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: FShimmerEffect(width: 150, height: 110)),
            SizedBox(height: FSizes.spaceBtwItems),
            Expanded(child: FShimmerEffect(width: 150, height: 110)),
            SizedBox(height: FSizes.spaceBtwItems),
            Expanded(child: FShimmerEffect(width: 150, height: 110)),
          ],
        ),
      ],
    );
  }
}
// Commit at 2023-10-09 13:49:16
// Commit at 2023-12-24 12:15:21
// Commit at 2023-02-25 10:37:10
// Commit at 2023-08-04 15:55:52
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
Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
