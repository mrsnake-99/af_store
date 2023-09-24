import 'package:af_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:af_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/products/product_Cards/products_cart_verical.dart';
import 'package:af_store/common/widgets/shimmer/vertical_product_shimmer.dart';
import 'package:af_store/common/widgets/text/section_heading.dart';
import 'package:af_store/features/shop/controllers/product/product_controller.dart';
import 'package:af_store/features/shop/screens/all_products/all_products.dart';
import 'package:af_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:af_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:af_store/features/shop/screens/home/widgets/promoslider.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //header
          const FPrimaryHeaderWidget(
            child: Column(
              children: [
                //appbar
                FHomeAppBar(),
                SizedBox(height: FSizes.spaceBtwSections),

                //search
                FSearchContainer(text: 'Search in Store'),
                SizedBox(height: FSizes.spaceBtwSections),

                //categories

                Padding(
                  padding: EdgeInsets.only(left: FSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //heading
                      FSectionHeading(
                        title: 'Popular Categories',
                        showActionButtion: false,
                        textColor: FColors.white,
                      ),
                      SizedBox(height: FSizes.spaceBtwItems),

                      //categories actual

                      FHomeCategories(),
                    ],
                  ),
                ),
                SizedBox(height: FSizes.spaceBtwSections),
              ],
            ),
          ),
          //body - promo images
          Padding(
            padding: const EdgeInsets.all(FSizes.defaultSpace),
            child: Column(
              children: [
                const FPromoSlider(),
                const SizedBox(
                  height: FSizes.spaceBtwSections,
                ),

                //heading
                FSectionHeading(
                  title: 'Popular Products',
                  onPressed: () => Get.to(() => AllProducts(
                        title: 'Popular Products',
                        futureMethod: controller.fetchAllFeaturedProducts(),
                      )),
                ),
                const SizedBox(height: FSizes.spaceBtwItems),

                //product card
                Obx(() {
                  if (controller.isLoading.value) {
                    return const FVerticalProductShimmer();
                  }

                  if (controller.featuredProducts.isEmpty) {
                    return Center(
                        child: Text(
                      'No Products Here!',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ));
                  }
                  return FGridLayout(
                      itemCount: controller.featuredProducts.length,
                      itemBuilder: (_, index) => FProductCardVertical(
                          product: controller.featuredProducts[index]));
                }),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
// Commit at 2022-05-13 16:15:22
// Commit at 2022-10-15 14:02:36
// Commit at 2024-07-21 18:23:51
// Commit at 2024-07-21 16:14:15
// Commit at 2024-07-24 15:02:19
// Commit at 2024-07-24 17:59:19
// Commit at 2024-09-04 12:22:15
// Random commit
// Random commit
// Random commit
Random commit
Random commit
