import 'package:af_store/data/repositories/product/product_repository.dart';
import 'package:af_store/features/shop/models/product_model.dart';
import 'package:af_store/utils/popups/loaders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AllProductsController extends GetxController {
  static AllProductsController get instance => Get.find();

  final repository = ProductRepository.instance;
  final RxString selectedSortOption = 'Name'.obs;
  final RxList<ProductModel> products = <ProductModel>[].obs;

  final Logger logger = Logger();

  Future<List<ProductModel>> fetchProductByQuery(Query? query) async {
    try {
      if (query == null) return [];

      final products = await repository.fetchProductByQuery(query);

      return products;
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
    return [];
  }

  void sortProducts(String sortOption) {
    selectedSortOption.value = sortOption;

    switch (sortOption) {
      case 'Name':
        products.sort((a, b) => a.title.compareTo(b.title));
        break;

      case 'Higher Price':
        products.sort((a, b) => b.price.compareTo(a.price));
        break;

      case 'Lower Price':
        products.sort((a, b) => a.price.compareTo(b.price));

        break;

      //  case 'Newest':
      // products.sort((a, b) => b.date!.compareTo(a.date!));
      // break;

      case 'Sale':
        products.sort((a, b) {
          if (b.salePrice > 0) {
            return b.salePrice.compareTo(a.salePrice);
          } else if (a.salePrice > 0) {
            return -1;
          } else {
            return 1;
          }
        });
        break;
      default:
        products.sort((a, b) => a.title.compareTo(b.title));
    }
  }

  void assignProducts(List<ProductModel> products) {
    this.products.assignAll(products);
    sortProducts('Name');
  }
}
// Commit at 2022-05-02 16:43:50
// Commit at 2022-06-18 12:58:46
// Commit at 2022-12-10 12:27:31
// Commit at 2022-12-17 16:49:05
// Commit at 2023-02-09 11:05:53
// Commit at 2023-08-08 15:26:26
// Commit at 2024-07-05 16:03:34
// Commit at 2024-05-08 17:24:02
// Commit at 2024-02-14 11:39:26
// Random commit
// Random commit
