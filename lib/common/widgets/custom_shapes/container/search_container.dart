import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FSearchContainer extends StatelessWidget {
  const FSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: FSizes.defaultSpace,
    ),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: FDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(FSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? FColors.dark
                    : FColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(
              FSizes.cardRadiusLg,
            ),
            border: showBorder
                ? Border.all(
                    color: FColors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: FColors.darkerGrey,
              ),
              const SizedBox(
                width: FSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Commit at 2022-08-07 18:58:47
// Commit at 2022-04-13 17:48:09
// Commit at 2022-05-22 09:27:43
// Commit at 2023-01-16 10:49:47
// Commit at 2023-10-10 16:51:05
// Commit at 2024-10-04 12:09:01
// Commit at 2024-06-17 14:16:25
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
