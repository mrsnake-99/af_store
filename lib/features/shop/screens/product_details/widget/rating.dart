import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FRatingandShare extends StatelessWidget {
  const FRatingandShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: FSizes.defaultSpace / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(104)')
                ],
              ),
            ),
          ],
        ),
        //share
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: FSizes.iconMd,
            ))
      ],
    );
  }
}
// Commit at 2022-08-07 12:09:28
// Commit at 2022-06-12 10:28:32
// Commit at 2022-05-12 13:30:09
// Commit at 2022-11-20 10:33:25
// Commit at 2023-01-26 12:27:37
// Commit at 2023-08-02 12:00:02
// Commit at 2024-05-16 16:17:38
// Random commit
// Random commit
// Random commit
Random commit
