import 'package:app/feature/bottom%20nav%20bar/pages/bottom_page.dart';
import 'package:app/feature/home/pages/eyu.dart';
import 'package:app/feature/home/widget/carousel_slider.dart';
import 'package:app/feature/home/widget/category.dart';
import 'package:app/feature/home/widget/gridView.dart';
import 'package:app/feature/home/widget/today_alert.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(GetPlatform.isMobile ? TSizes.md : TSizes.lg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  const AddsSlider(),
                // SizedBox(height: TSizes.spaceBetweenSections),
                //  const Category(),
                // SizedBox(height: TSizes.spaceBetweenSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good Evening , Tomy!",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: TColors.textPrimary,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TColors.accent.withValues(alpha: 0.3),
                      ),
                      child: Icon(Icons.notifications, color: TColors.accent),
                    ),
                  ],
                ),
                Text(
                  'Today is Saturday, December 26 2025',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: TColors.textSecondary,
                  ),
                ),
                SizedBox(height: TSizes.spaceBetweenFields),
                GridviewPage(),
                SizedBox(height: TSizes.spaceBetweenFields),
                const TodayAlert(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
