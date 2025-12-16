import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TBottomSheetTheme {
  // ---------------- LIGHT THEME ----------------
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: TColors.surface,
    modalBackgroundColor: TColors.surface,
    elevation: 16,
    shadowColor: Colors.black.withValues(alpha: 0.12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(TSizes.radiusLg),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    constraints: BoxConstraints(
      minWidth: double.infinity,
      maxWidth: double.infinity,
      maxHeight: 0.9.sh,
    ),
    modalBarrierColor: Colors.black.withValues(alpha: 0.32),
    dragHandleColor: TColors.borderLight,
    dragHandleSize: const Size(32, 4),
    showDragHandle: true,
  );

  // ---------------- DARK THEME ----------------
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: TColors.darkSurface,
    modalBackgroundColor: TColors.darkSurface,
    elevation: 16,
    shadowColor: Colors.black.withValues(alpha: 0.32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(TSizes.radiusLg),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    constraints: BoxConstraints(
      minWidth: double.infinity,
      maxWidth: double.infinity,
      maxHeight: 0.9.sh,
    ),
    modalBarrierColor: Colors.black.withValues(alpha: 0.5),
    dragHandleColor: TColors.borderDark,
    dragHandleSize: const Size(32, 4),
    showDragHandle: true,
  );
}
