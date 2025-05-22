import 'package:af_store/common/widgets/login_signup_widgets/form_divider.dart';
import 'package:af_store/common/widgets/login_signup_widgets/social_buttons.dart';
import 'package:af_store/features/authentication/screens/signup/widget/signup_form.dart';

import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(
                FSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    FTexts.signUpTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //form
                  const FSignupForm(),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //divider
                  const FFormDivider(
                    dividerText: FTexts.signUpWith,
                  ),

                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //social media buttons
                  const FSocialButtons(),
                ],
              )),
        ));
  }
}
// Commit at 2023-12-13 11:06:08
// Commit at 2023-10-06 18:36:11
// Commit at 2023-01-27 14:03:34
// Commit at 2024-10-25 09:01:33
// Commit at 2024-02-16 18:08:41
// Random commit
// Random commit
// Random commit
