import 'package:af_store/features/shop/controllers/product/cart_controller.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/pricing_calculator.dart';
import 'package:flutter/material.dart';

class FBiliingAmountSection extends StatelessWidget {
  const FBiliingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = CartController.instance;
    final subTotal = cartController.totalCartPrice.value;
    return Column(
      children: [
        //subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$$subTotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: FSizes.spaceBtwItems / 2),

        //shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$${FPricingCalculator.calculateShippingCost(subTotal, 'Pakistan')}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: FSizes.spaceBtwItems / 2),

        const SizedBox(height: FSizes.spaceBtwItems / 2),

        //tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$${FPricingCalculator.calculateTaxAmount(subTotal, 'Pakistan')}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: FSizes.spaceBtwItems / 2),

        //order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$${FPricingCalculator.calculateTotalPrice(subTotal, 'Pakistan')}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
// Commit at 2022-10-09 17:46:15
// Commit at 2022-08-27 17:34:15
// Commit at 2023-07-09 17:35:07
// Commit at 2023-01-05 18:32:48
// Commit at 2023-08-02 14:20:12
// Random commit
Random commit
Random commit
Random commit
