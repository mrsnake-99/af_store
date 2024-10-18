import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FTabBar extends StatelessWidget implements PreferredSizeWidget {
  const FTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Colors.black : Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FColors.primaryColor,
        labelColor: dark ? FColors.white : FColors.primaryColor,
        unselectedLabelColor: FColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}
// Commit at 2023-06-05 10:54:24
// Commit at 2024-06-02 16:23:50
// Commit at 2024-12-17 17:21:26
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
