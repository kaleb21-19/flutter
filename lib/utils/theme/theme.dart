import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/theme/app_bar_theme.dart';
import 'package:app/utils/theme/bottomsheet_theme.dart';
import 'package:app/utils/theme/button_theme.dart';
import 'package:app/utils/theme/card_theme.dart';
import 'package:app/utils/theme/divider_theme.dart';
import 'package:app/utils/theme/input_filed_theme.dart';
import 'package:app/utils/theme/snackbar_theme.dart';
import 'package:app/utils/theme/floatingbutton_theme.dart';
import 'package:app/utils/theme/dialog_theme.dart';
import 'package:app/utils/theme/bottomnavigationBarTheme.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    shadowColor: Colors.black,
    colorScheme: ColorScheme.light(
      primary: TColors.primary,
      secondary: TColors.secondary,
      surface: TColors.surface,
      onSurface: TColors.textPrimary,
      error: TColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onError: Colors.white,
    ),
    primaryColor: TColors.gray.withValues(alpha: 0.1),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    textTheme: TTextTheme.lightTextTheme,
    inputDecorationTheme: TInputDecorationTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TButtonTheme.lightOutlinedButtonTheme,
    textButtonTheme: TButtonTheme.lightTextButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    cardTheme: TCardTheme.lightCardTheme,
    dividerTheme: TDividerTheme.lightDividerTheme,
    snackBarTheme: TSnackBarTheme.lightSnackBarTheme,
    floatingActionButtonTheme:
        TFloatingButtonTheme.lightFloatingActionButtonTheme,
    dialogTheme: TDialogTheme.lightDialogTheme,
    bottomNavigationBarTheme:
        TBottomNavigationBarTheme.lightBottomNavigationBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    shadowColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: TColors.primary,
      secondary: TColors.secondary,
      surface: TColors.darkSurface,
      onSurface: TColors.white,
      error: TColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onError: Colors.white,
    ),
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.darkBackground,
    cardColor: TColors.darkSurface,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    textTheme: TTextTheme.darkTextTheme,
    inputDecorationTheme: TInputDecorationTheme.darkInputDecorationTheme,
    elevatedButtonTheme: TButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TButtonTheme.darkOutlinedButtonTheme,
    textButtonTheme: TButtonTheme.darkTextButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    cardTheme: TCardTheme.darkCardTheme,
    dividerTheme: TDividerTheme.darkDividerTheme,
    snackBarTheme: TSnackBarTheme.darkSnackBarTheme,
    floatingActionButtonTheme:
        TFloatingButtonTheme.darkFloatingActionButtonTheme,
    dialogTheme: TDialogTheme.darkDialogTheme,
    bottomNavigationBarTheme:
        TBottomNavigationBarTheme.darkBottomNavigationBarTheme,
  );
}
