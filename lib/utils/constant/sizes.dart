import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TSizes {
  // ----------- Spacing  -----------
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get md => 16.w;
  static double get lg => 24.w;
  static double get xl => 32.w;
  static double get xxl => 48.w;

  // ----------- Heights  -----------
  static double get hXs => 2.h;
  static double get hSm => 4.h;
  static double get hMd => 8.h;
  static double get hLg => 16.h;
  static double get hXl => 24.h;
  static double get hXxl => 48.h;

  // ----------- Padding  -----------
  static EdgeInsets get screenPadding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h);

  // ----------- Radius  -----------
  static double get radiusSm => 6.r;
  static double get radiusMd => 12.r;
  static double get radiusLg => 20.r;
  static double get radiusFull => 999.r;

  // ----------- Icon sizes  -----------
  static double get iconSm => 18.sp;
  static double get iconMd => 22.sp;
  static double get iconLg => 28.sp;
  static double get iconXl => 34.sp;

  // ----------- Button sizes  -----------
  static double get buttonHeight => 48.h;
  static double get buttonRadius => 12.r;

  // ----------- Image sizes  -----------
  static double get imgSm => 40.w;
  static double get imgMd => 60.w;
  static double get imgLg => 100.w;

  // ----------- Input Field Padding  -----------
  static double get inputPaddingVertical => 14.h;
  static double get inputPaddingHorizontal => 16.w;
  static double get inputPaddingDenseVertical => 10.h;
  static double get inputPaddingDenseHorizontal => 12.w;

  // ----------- Spacing between elements  -----------
  static double spaceBetweenFields = 16.h;
  static double spaceBetweenSections = 32.h;
  static double spaceBetweenItems = 8.h;

  // ----------- Responsive width helpers  -----------
  static double get cardWidth => 0.9.sw; // 90% of screen width
  static double get fullWidth => 1.0.sw; // 100% of screen width
  static double get halfWidth => 0.5.sw; // 50% of screen width
  static double get thirdWidth => 0.33.sw; // 33% of screen width

  // ----------- Responsive height helpers  -----------
  static double get cardHeight => 0.15.sh; // 15% of screen height
  static double get listHeight => 0.7.sh; // 70% of screen height
  static double get fullHeight => 1.0.sh; // 100% of screen height

  // ----------- Responsive font sizes  -----------
  static double get responsiveSm => 10.sp;
  static double get responsiveMd => 14.sp;
  static double get responsiveLg => 18.sp;
  static double get responsiveXl => 24.sp;
}
