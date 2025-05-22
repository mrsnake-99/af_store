import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/products/product_Cards/products_cart_verical.dart';
import 'package:af_store/features/shop/controllers/allproduct_controller.dart';
import 'package:af_store/features/shop/models/product_model.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FSortableProducts extends StatelessWidget {
  const FSortableProducts({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllProductsController());
    controller.assignProducts(products);
    return Column(
      children: [
        ///Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          value: controller.selectedSortOption.value,
          onChanged: (value) {
            controller.sortProducts(value!);
          },
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest']
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: FSizes.spaceBtwSections),

        ///Products
        Obx(() {
          return FGridLayout(
            itemCount: controller.products.length,
            itemBuilder: (_, index) => FProductCardVertical(
              product: controller.products[index],
            ),
          );
        }),
      ],
    );
  }
}
// Commit at 2022-05-22 13:03:32
// Commit at 2022-04-08 16:29:35
// Commit at 2023-11-27 17:55:32
// Commit at 2023-03-08 11:51:24
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
