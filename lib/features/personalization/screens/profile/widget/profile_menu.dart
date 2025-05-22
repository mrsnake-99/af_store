import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FProfileMenu extends StatelessWidget {
  const FProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: FSizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              icon,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
// Commit at 2022-12-15 12:44:14
// Commit at 2023-03-26 14:51:14
// Commit at 2024-11-02 13:31:05
// Commit at 2024-11-28 18:06:59
// Commit at 2024-04-18 09:53:18
// Commit at 2024-01-05 16:50:10
// Random commit
// Random commit
// Random commit
