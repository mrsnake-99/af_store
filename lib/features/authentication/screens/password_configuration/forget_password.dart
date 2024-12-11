
import 'package:af_store/features/authentication/controllers/forget_password/forget_pass_controller.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:af_store/utils/constants/text_strings.dart';
import 'package:af_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading
              Text(
                FTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),

              Text(
                FTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections * 2,
              ),

              //text field
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,
                  validator: FValidator.validateEmail,
                  decoration: const InputDecoration(
                    hintText: FTexts.email,
                    labelText: FTexts.email,
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //submit button

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.sendPasswordResetEmail(),
                      child: const Text(FTexts.fsubmit))),
            ],
          )),
    );
  }
}
// Commit at 2022-12-23 13:59:42
// Commit at 2022-12-15 17:24:17
// Commit at 2022-08-19 09:41:18
// Commit at 2023-01-01 17:35:36
// Commit at 2024-10-01 12:23:41
// Commit at 2024-08-11 17:02:12
// Commit at 2024-04-27 09:42:12
// Commit at 2024-08-25 14:24:09
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
