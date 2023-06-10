import 'package:af_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FDeviceUtils.getAppBarHeight(),
      right: FSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipClick(),
        child: const Text('Skip'),
      ),
    );
  }
}
// Commit at 2022-08-22 12:33:09
// Commit at 2023-04-18 18:48:49
// Random commit
// Random commit
Random commit
Random commit
