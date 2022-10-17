import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
// Commit at 2023-12-17 10:29:28
// Commit at 2023-02-04 15:02:05
// Commit at 2024-09-13 18:33:07
// Commit at 2024-04-01 13:36:00
// Random commit
// Random commit
Random commit
