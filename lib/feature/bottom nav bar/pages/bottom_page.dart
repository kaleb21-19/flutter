import 'package:app/feature/auth%20copy%202/pages/kaleb.dart';
import 'package:app/feature/bottom%20nav%20bar/controllers/bottomNavbar_controller.dart';
import 'package:app/feature/home/pages/home_page.dart';
import 'package:app/feature/profile/pages/profile_page.dart';
import 'package:app/feature/revenue/pages/revenue.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarPage extends StatelessWidget {
  const BottomNavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const HomePage(), const Members(), Revenue()];
    final controller = Get.put(BottomNavbarController());
    return Scaffold(
      body: Obx(
        () =>
            IndexedStack(index: controller.currentIndex.value, children: pages),
      ),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: TColors.primary,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_work),
              label: 'Members',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Revenue',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changeIndex(index);
          },
        ),
      ),
    );
  }
}
