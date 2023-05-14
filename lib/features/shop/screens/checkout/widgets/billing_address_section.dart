import 'package:af_store/common/widgets/text/section_heading.dart';
import 'package:af_store/features/personalization/controllers/address_controller.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FBilingAddresSection extends StatelessWidget {
  const FBilingAddresSection({super.key});

  @override
  Widget build(BuildContext context) {
    final addressController = AddressController.instance;
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FSectionHeading(
            title: 'Address',
            buttonTitle: 'Change',
            onPressed: () => addressController.selectNewAddressPopup(context),
          ),
          addressController.selectedAddress.value.id.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(addressController.selectedAddress.value.name,
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(
                      height: FSizes.spaceBtwItems / 2,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(
                          width: FSizes.spaceBtwItems,
                        ),
                        Text(
                            addressController.selectedAddress.value.phoneNumber,
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                    const SizedBox(
                      height: FSizes.spaceBtwItems / 2,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_history,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(
                          width: FSizes.spaceBtwItems,
                        ),
                        Text(addressController.selectedAddress.value.toString(),
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                )
              : Text(
                  'Select Address',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
        ],
      ),
    );
  }
}
// Commit at 2022-04-17 10:23:38
// Commit at 2022-04-15 16:26:22
// Commit at 2022-06-13 10:18:20
// Commit at 2022-03-12 14:42:08
// Commit at 2022-11-07 16:37:20
// Commit at 2023-10-20 18:12:54
// Commit at 2023-01-03 18:06:43
// Commit at 2024-10-11 17:53:34
// Commit at 2024-11-22 09:17:13
// Commit at 2024-01-17 13:21:07
// Random commit
// Random commit
// Random commit
Random commit
