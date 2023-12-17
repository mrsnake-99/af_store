import 'package:af_store/common/styles/spacing_styles.dart';
import 'package:af_store/common/widgets/login_signup_widgets/form_divider.dart';
import 'package:af_store/common/widgets/login_signup_widgets/social_buttons.dart';
import 'package:af_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:af_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: FSpacingStyle.paddingwithAppBarHeight,
        child: Column(
          children: [
            FLoginHeader(dark: dark),
            //form
            const FLoginForm(),

            //Divider
            FFormDivider(
              dividerText: FTexts.signInWith.capitalize!,
            ),
            const SizedBox(height: FSizes.spaceBtwSections),

            ///Footer
            const FSocialButtons()
          ],
        ),
      ),
    ));
  }
}
// Commit at 2022-05-27 09:35:28
// Commit at 2022-12-10 14:22:07
// Commit at 2022-06-09 09:37:02
// Commit at 2023-05-11 13:54:23
// Commit at 2023-09-26 14:00:29
// Random commit
// Random commit
// Random commit
Random commit
Random commit
