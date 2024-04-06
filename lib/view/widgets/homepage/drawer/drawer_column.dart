import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/home_page/drawer/drawer_controller.dart';
import 'package:med_sal/controller/indexed_stack/indexed_stack_controller.dart';
import 'package:med_sal/view/widgets/homepage/drawer/drawer_container.dart';

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageDrawerController homePageDrawerController =
        Get.put(HomePageDrawerController());
    IndexedStackController indexedStackController =
        Get.put(IndexedStackController());
    return Column(
      children: [
        const SizedBox(height: 40),
        //********************** Home  *************************/
        DrawerContainer(text: 'Home', onTap: () {}),
        //********************** Categories  *************************/
        DrawerContainer(
            text: 'Categories',
            onTap: () => indexedStackController.changeIndex(1) //New
            // homePageDrawerController.goToCategories() //todo
            ),
        //********************** Setting  *************************/
        DrawerContainer(text: 'Setting', onTap: () {}),
        //********************** State Booking  *************************/
        DrawerContainer(
          text: 'State Booking',
          onTap: () {
            homePageDrawerController.goToStateBooking();
          },
        ),
        //********************** Log Out  *************************/
        DrawerContainer(text: 'Log Out', onTap: () {}),
      ],
    );
  }
}
