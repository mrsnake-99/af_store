import 'package:af_store/data/repositories/banner/banner_repository.dart';
import 'package:af_store/features/shop/models/banner_model.dart';
import 'package:af_store/utils/popups/loaders.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  static BannerController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  //update page indicator
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //Fetch Banners
  Future<void> fetchBanners() async {
    try {
      // show loader while loading
      isLoading.value = true;
      //fetch banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      //assign banners to the list
      this.banners.assignAll(banners);
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //remove loader
      isLoading.value = false;
    }
  }
}
// Commit at 2022-01-16 17:37:15
// Commit at 2023-08-03 12:08:17
// Commit at 2023-05-05 10:52:39
// Commit at 2023-06-23 13:38:39
// Commit at 2024-04-27 12:24:00
// Random commit
// Random commit
Random commit
