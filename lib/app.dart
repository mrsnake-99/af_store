import 'package:af_store/bindings/general_bindings.dart';
import 'package:af_store/routes/app_routes.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:af_store/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,

      ///show loader or circular progress indicator meanwhile authentication repo is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: FColors.primaryColor,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
// Commit at 2022-02-02 17:26:08
// Commit at 2023-12-14 10:02:27
// Commit at 2023-07-16 09:44:53
// Commit at 2024-01-04 11:22:01
// Random commit
// Random commit
Random commit
