import "package:af_store/features/authentication/screens/login/login.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_storage/get_storage.dart";

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentpageindex = 0.obs;

  void updatePageIndicator(int index) => currentpageindex.value = index;

  void dotNativeClick(index) {
    currentpageindex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentpageindex.value == 2) {
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      int page = currentpageindex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipClick() {
    currentpageindex.value = 2;
    pageController.jumpToPage(2);
  }
}
// Commit at 2022-11-18 11:47:45
// Commit at 2023-11-13 14:47:16
// Commit at 2023-12-21 09:38:53
// Commit at 2024-02-08 11:37:17
// Commit at 2024-06-03 10:19:30
// Random commit
// Random commit
// Random commit
