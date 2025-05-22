import 'package:af_store/features/authentication/controllers/login/login_controller.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FSocialButtons extends StatelessWidget {
  const FSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //google
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.loginWithGoogle(),
            icon: const Icon(FontAwesomeIcons.google),
          ),
        ),
        const SizedBox(width: FSizes.spaceBtwItems),
        Container(
          //facebook
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.facebook),
          ),
        ),
      ],
    );
  }
}
// Commit at 2022-12-21 11:14:51
// Commit at 2022-12-14 17:13:03
// Commit at 2023-05-03 09:03:58
// Commit at 2024-10-04 11:58:56
// Commit at 2024-08-26 15:33:58
// Random commit
// Random commit
// Random commit
// Random commit
