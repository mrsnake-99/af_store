import 'package:af_store/common/widgets/loaders/animation_loader.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: FHelperFunctions.isDarkMode(Get.context!)
              ? FColors.dark
              : FColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              FAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
// Commit at 2022-12-17 18:10:53
// Commit at 2022-01-24 11:10:08
// Commit at 2023-11-02 12:23:59
// Commit at 2023-04-09 17:05:21
// Commit at 2024-09-19 14:22:40
// Commit at 2024-09-15 11:16:49
// Commit at 2024-05-03 15:49:51
// Random commit
Random commit
Random commit
Random commit
