import 'package:af_store/common/widgets/brands/brand_showcase.dart';
import 'package:af_store/common/widgets/shimmer/boxes_shimmer.dart';
import 'package:af_store/common/widgets/shimmer/list_tile_shimmer.dart';
import 'package:af_store/features/shop/controllers/product/brand_controller.dart';
import 'package:af_store/features/shop/models/category_model.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/helpers/cloud_helper_functions.dart';
import 'package:flutter/cupertino.dart';

class CategoryBrands extends StatelessWidget {
  const CategoryBrands({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final controller = BrandController.instance;
    return FutureBuilder(
      future: controller.getBrandsForCategory(category.id),
      builder: (context, snapshot) {
        const loader = Column(
          children: [
            FListTileShimmer(),
            SizedBox(height: FSizes.spaceBtwItems),
            FBoxesShimmer(),
            SizedBox(height: FSizes.spaceBtwItems),
          ],
        );
        final widget = FCloudHelperFunctions.checkMultiRecordState(
            snapshot: snapshot, loader: loader);
        if (widget != null) return widget;

        //record Found!
        final brands = snapshot.data!;
        return ListView.builder(
          itemCount: brands.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final brand = brands[index];
            return FutureBuilder(
                future:
                    controller.getBrandProducts(brandId: brand.id, limit: 3),
                builder: (context, snapshot) {
                  final widget = FCloudHelperFunctions.checkMultiRecordState(
                      snapshot: snapshot, loader: loader);
                  if (widget != null) return widget;
                  final products = snapshot.data!;

                  return FBrandShowCase(
                    images: products.map((e) => e.thumbnail).toList(),
                    brand: brand,
                  );
                });
          },
        );
      },
    );
  }
}
// Commit at 2022-09-18 18:48:32
// Commit at 2022-07-17 12:13:50
// Commit at 2022-04-06 17:41:40
// Commit at 2022-07-09 11:44:01
// Commit at 2024-03-15 14:33:28
// Commit at 2024-05-08 13:39:51
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
