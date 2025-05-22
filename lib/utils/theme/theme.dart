import 'package:af_store/utils/theme/custom_theme.dart/appbar_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/bottom_sheet_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/outlined_button_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/text_feild_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/text_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/elevated_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.lightTextTheme,
    chipTheme: FchipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    checkboxTheme: FCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.darkTextTheme,
    chipTheme: FchipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    checkboxTheme: FCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.darkInputDecorationTheme,
  );
}
// Commit at 2022-09-09 15:23:33
// Commit at 2022-04-23 15:15:15
// Commit at 2022-06-08 15:03:02
// Commit at 2023-11-17 15:15:49
// Commit at 2024-12-25 11:08:10
// Commit at 2024-12-03 18:54:16
// Commit at 2024-01-24 16:32:10
// Commit at 2024-04-01 16:11:46
// Random commit
// Random commit
// Random commit
// Random commit
