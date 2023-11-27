import 'package:af_store/features/personalization/screens/settings/settings.dart';
import 'package:af_store/features/shop/screens/home/home.dart';
import 'package:af_store/features/shop/screens/store/store.dart';
import 'package:af_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Navigationcontroller());
    final dark = FHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark
              ? Colors.white.withOpacity(0.1)
              : Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class Navigationcontroller extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
}
// Commit at 2022-03-17 12:25:07
// Commit at 2023-09-08 13:14:21
// Commit at 2023-09-02 18:50:16
// Commit at 2023-06-17 13:37:57
// Commit at 2024-10-22 15:42:30
// Commit at 2024-12-15 09:46:00
// Random commit
Random commit
