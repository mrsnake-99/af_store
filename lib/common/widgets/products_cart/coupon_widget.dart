import 'package:af_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FCouponCode extends StatelessWidget {
  const FCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return FRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? FColors.dark : FColors.white,
      padding: const EdgeInsets.only(
          top: FSizes.md, bottom: FSizes.sm, right: FSizes.sm, left: FSizes.md),
      //text field coupan
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a Promo Code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? FColors.white.withOpacity(0.5)
                        : FColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                  ),
                  child: const Text('Apply'))),
        ],
      ),
    );
  }
}
// Commit at 2022-07-26 11:00:24
// Commit at 2023-12-10 15:32:04
// Commit at 2023-01-22 10:50:46
// Commit at 2023-09-05 09:02:37
// Commit at 2024-12-04 17:19:59
// Random commit
// Random commit
Random commit
