import 'package:af_store/utils/constants/colors.dart';
// import 'package:af_store/utils/constants/text_strings.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class FFormDivider extends StatelessWidget {
  const FFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? FColors.darkGrey : FColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? FColors.darkGrey : FColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
// Commit at 2023-08-17 15:52:40
// Commit at 2023-04-14 11:28:57
// Commit at 2023-07-20 15:27:47
// Commit at 2024-12-14 11:25:43
// Commit at 2024-04-21 10:58:48
