import 'package:af_store/common/widgets/appbar/appbar.dart';
import 'package:af_store/common/widgets/products_cart/cart_menu_counter.dart';
import 'package:af_store/features/personalization/controllers/user_controller.dart';
import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FHomeAppBar extends StatelessWidget {
  const FHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: FColors.grey),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const FShimmerEffect(width: 100, height: 15);
            }
            return Text(
              controller.user.value.fullName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: FColors.white),
            );
          }),
        ],
      ),
      actions: const [
        FCartCounterIcon(
          iconColor: FColors.white,
          counterTextColor: FColors.white,
          counterbgColor: FColors.black,
        ),
      ],
    );
  }
}
// Commit at 2022-08-22 09:04:02
// Commit at 2022-11-15 09:06:39
// Commit at 2022-06-08 11:28:52
// Commit at 2023-09-22 17:40:46
// Commit at 2023-04-26 11:49:35
// Commit at 2023-06-19 13:59:20
// Commit at 2024-08-27 17:43:31
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
