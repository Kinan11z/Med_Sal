import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/navigationBar/bottom_navigation_bar_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavigationBarController());
    return GetBuilder<BottomNavigationBarController>(builder: (controller) {
      return Scaffold(
        body: controller.pages[controller.selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.selectedIndex,
          animationDuration: const Duration(seconds: 3),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          backgroundColor: AppColors.appBarColor,
          destinations: List.generate(
            controller.destinations.length,
            (index) => NavigationDestination(
              icon: controller.destinations[index]['icon'],
              label: controller.destinations[index]['label'],
            ),
          ),
          onDestinationSelected: (newPage) {
            controller.changePage(newPage);
          },
        ),
      );
    });
  }
}
