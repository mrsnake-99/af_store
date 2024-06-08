import 'package:af_store/features/shop/controllers/product/cart_controller.dart';
import 'package:af_store/features/shop/screens/cart/cart.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FCartCounterIcon extends StatelessWidget {
  const FCartCounterIcon({
    super.key,
    required this.iconColor,
    this.counterbgColor,
    this.counterTextColor,
  });
  final Color iconColor;
  final Color? counterbgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    //get insatance of cart controller
    final controller = Get.put(CartController());
    final dark = FHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterbgColor ?? (dark ? FColors.white : FColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Obx(
                () => Text(
                  controller.noOfCartItems.value.toString(),
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: counterTextColor ??
                          (dark ? FColors.black : FColors.white),
                      fontSizeFactor: 0.8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// Commit at 2023-02-26 12:20:42
// Commit at 2023-06-18 13:22:00
// Commit at 2024-11-28 11:52:27
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
