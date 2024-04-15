import 'package:af_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingNavigation extends StatelessWidget {
  const onBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = FHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: FDeviceUtils.getBottomNavigatorBarHeight() + 25,
      left: FSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNativeClick,
        // controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? FColors.light : FColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
// Commit at 2022-08-05 18:14:59
// Commit at 2022-12-13 18:58:55
// Commit at 2023-05-27 13:24:37
// Commit at 2024-07-03 16:24:44
// Commit at 2024-05-21 16:31:52
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
