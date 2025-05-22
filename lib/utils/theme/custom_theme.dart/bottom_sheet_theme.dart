import 'package:flutter/material.dart';

class FBottomSheetTheme {
  FBottomSheetTheme._();

  //----light theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
  //----dark theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
// Commit at 2022-03-23 12:29:47
// Commit at 2022-10-09 18:46:38
// Commit at 2022-09-03 14:59:52
// Commit at 2022-02-13 10:35:29
// Commit at 2023-04-17 17:27:43
// Commit at 2023-12-24 13:16:38
// Commit at 2023-06-05 09:54:02
// Commit at 2023-06-17 13:09:22
// Commit at 2024-08-08 10:20:39
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
