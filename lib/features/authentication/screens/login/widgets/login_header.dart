import 'package:af_store/utils/constants/image_strings.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FLoginHeader extends StatelessWidget {
  const FLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            dark ? FImages.lightAppLogo : FImages.darkAppLogo,
          ),
          height: 180,
        ),
        Text(
          FTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: FSizes.sm),
        Text(
          FTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
// Commit at 2022-10-24 10:55:19
// Commit at 2022-03-10 09:30:54
// Commit at 2022-06-23 17:07:09
// Commit at 2022-06-01 13:43:42
// Commit at 2023-08-24 12:56:32
// Commit at 2023-06-21 12:26:55
// Commit at 2024-09-16 13:42:09
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
