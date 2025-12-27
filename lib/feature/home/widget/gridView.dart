import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  GridviewPage({super.key});
  final List<Map<String, dynamic>> list = [
    {
      'title': 'Active members',
      'value': '100',
      'trend': '+10',
      'icon': Icons.group_rounded,
    },
    {
      'title': 'Expiring in 7 days',
      'value': '200',
      'trend': '+75',
      'icon': Icons.timelapse_rounded,
    },
    {
      'title': 'New This Month',
      'value': '150',
      'trend': '+15%',
      'icon': Icons.new_releases_rounded,
      'increase': '+12%',
    },
    {
      'title': 'Birr Today',
      'value': '10,300',
      'trend': '+40%',
      'icon': Icons.attach_money_rounded,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: TSizes.sm,
        mainAxisSpacing: TSizes.sm,
      ),
      itemBuilder: (context, index) {
        print('Index: $index, Item: ${list[index]}');
        final data = list[index];
        return Container(
          padding: const EdgeInsets.all(
            12,
          ), // Increased padding for breathing room
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circular Icon Container
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: TColors.warning.withValues(alpha: 0.1),
                      shape: BoxShape.circle, // Made it a perfect circle
                    ),
                    child: Icon(
                      data['icon'], // Using dynamic icon
                      size: 28,
                      color: TColors.warning,
                    ),
                  ),

                  // Subtle Trend Indicator
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 16, // Smaller, subtle arrow
                        color: Colors.green,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        data['trend'] ?? '+10',
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Value Text
              Text(
                data['value'] ?? '',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: TSizes.hMd),
              // Label Text
              Text(
                data['title'] ?? '',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(letterSpacing: 0.5),
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
    );
  }
}
