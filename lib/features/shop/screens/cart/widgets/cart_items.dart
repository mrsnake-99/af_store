import 'package:af_store/common/widgets/product_price_tag/productPriceTag.dart';
import 'package:af_store/common/widgets/products_cart/add_remove_button.dart';
import 'package:af_store/common/widgets/products_cart/cart_items_view.dart';
import 'package:af_store/features/shop/controllers/product/cart_controller.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FCartItems extends StatelessWidget {
  const FCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;

    return Obx(
      () => ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(
          height: FSizes.spaceBtwSections,
        ),
        shrinkWrap: true,
        itemCount: controller.cartItems.length,
        itemBuilder: (_, index) => Obx(() {
          final item = controller.cartItems[index];
          return Column(
            children: [
              //cart item
              FCartItemView(
                cartItem: item,
              ),
              if (showAddRemoveButton)
                const SizedBox(height: FSizes.spaceBtwItems),

              //add remove button
              if (showAddRemoveButton)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 70),
                        //add and remove
                        FProductAddRemoveButton(
                          quantity: item.quantity,
                          add: () => controller.addOneToCart(item),
                          remove: () => controller.removeOneFromCart(item),
                        ),
                      ],
                    ),
                    //total price
                    FProductPriceText(
                        price: (item.price * item.quantity).toStringAsFixed(1))
                  ],
                )
            ],
          );
        }),
      ),
    );
  }
}
// Commit at 2022-07-16 09:31:32
// Commit at 2022-04-07 15:12:34
// Commit at 2023-08-24 18:55:27
// Commit at 2024-05-18 17:21:06
// Commit at 2024-10-19 09:41:19
// Commit at 2024-03-08 17:52:59
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
