import 'package:af_store/features/shop/models/banner_model.dart';
import 'package:af_store/routes/routes.dart';
import 'package:af_store/utils/constants/image_strings.dart';

class FDummyData {
  //banners

  static final List<BannerModel> banners = [
    BannerModel(
      imageUrl: FImages.productbanner1,
      targetScreen: FRoutes.cart,
      active: true,
    ),
    BannerModel(
      imageUrl: FImages.productbanner2,
      targetScreen: FRoutes.order,
      active: true,
    ),
    BannerModel(
      imageUrl: FImages.productbanner3,
      targetScreen: FRoutes.settings,
      active: true,
    ),
  ];
}
// Commit at 2022-05-23 11:23:44
// Commit at 2023-05-12 16:49:15
// Commit at 2024-10-05 10:50:16
// Commit at 2024-12-24 18:46:04
// Commit at 2024-09-12 14:54:57
// Commit at 2024-02-08 18:32:51
// Commit at 2024-05-24 09:57:52
// Commit at 2024-01-15 15:41:44
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
