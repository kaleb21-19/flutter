import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddsSlider extends StatelessWidget {
  const AddsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return Container(
            height: 120.h,
            width: double.infinity,
            color: Colors.red,
            child: Image.asset(
              'assets/images/ai-generated-8921932_1280.png',
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          height: 120.h,
          autoPlay: true,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
