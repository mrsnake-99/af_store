import 'package:af_store/common/widgets/icons/circular_icon.dart';
import 'package:af_store/features/shop/controllers/product/favourite_controller.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FFavouriteIcon extends StatelessWidget {
  const FFavouriteIcon({
    super.key,
    required this.productId,
  });
  final String productId;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavouriteController());
    return Obx(
      () => FCircularIcon(
        icon: controller.isFavorite(productId) ? Iconsax.heart5 : Iconsax.heart,
        color: controller.isFavorite(productId) ? FColors.error : null,
        onPressed: () => controller.toggleFavoriteProduct(productId),
      ),
    );
  }
}
// Commit at 2023-02-23 10:21:51
// Commit at 2023-05-27 14:07:42
// Commit at 2023-01-04 12:45:07
// Commit at 2023-10-10 10:47:55
// Commit at 2024-03-10 15:40:29
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
