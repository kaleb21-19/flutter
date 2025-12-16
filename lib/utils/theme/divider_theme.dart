import 'package:app/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class TDividerTheme {
  static DividerThemeData lightDividerTheme = DividerThemeData(
    color: TColors.gray.withValues(alpha: 0.15),
    thickness: 1,
    space: 1,
  );

  static DividerThemeData darkDividerTheme = DividerThemeData(
    color: TColors.gray.withValues(alpha: 0.25),
    thickness: 1,
    space: 1,
  );
}
