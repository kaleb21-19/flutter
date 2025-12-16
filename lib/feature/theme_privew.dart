import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePrivew extends StatelessWidget {
  const ThemePrivew({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Theme Privew'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListView(
        children: [
          /// TEXT
          Text('Headline Large', style: theme.textTheme.headlineLarge),
          Text('Headline Medium', style: theme.textTheme.headlineMedium),
          Text('Headline Small', style: theme.textTheme.headlineSmall),
          Text('Title Large', style: theme.textTheme.titleLarge),
          Text('Title Medium', style: theme.textTheme.titleMedium),
          Text('Title Small', style: theme.textTheme.titleSmall),
          Text('Body Text', style: theme.textTheme.bodyMedium),
          Text('Body Small', style: theme.textTheme.bodySmall),
          Text('Label Large', style: theme.textTheme.labelLarge),
          Text('Label Medium', style: theme.textTheme.labelMedium),
          Text('Label Small', style: theme.textTheme.labelSmall),

          /// BUTTON
          ElevatedButton(onPressed: () {}, child: const Text('Button')),
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),

          /// CARD
          Card(child: const Text('Card')),
          //dialog
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: const Text('Bottom Sheet Content'),
                ),
              );
            },
            child: const Text('Show Bottom Sheet'),
          ),
        ],
      ),
    );
  }
}
