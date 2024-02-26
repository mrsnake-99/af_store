import 'package:af_store/features/personalization/controllers/address_controller.dart';
import 'package:af_store/features/shop/controllers/product/checkout_controller.dart';
import 'package:af_store/features/shop/controllers/product/variation_controller.dart';
import 'package:af_store/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(VariationController());
    Get.put(AddressController());
    Get.put(CheckoutController());
  }
}
// Commit at 2023-03-27 18:43:16
// Commit at 2024-11-06 09:38:34
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
