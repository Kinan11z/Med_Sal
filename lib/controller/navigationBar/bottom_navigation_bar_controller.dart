import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/indexed_stack.dart';
import 'package:med_sal/view/screen/profile/profile.dart';

class BottomNavigationBarController extends GetxController {
  int selectedIndex = 0;

  List<Widget> pages = const [
    AppStack(), //new
    // HomePage(), //todo
    ProfilePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  List<Map<String, dynamic>> destinations = [
    {'icon': SvgPicture.asset(AppIcons.home), 'label': 'home'},
    {'icon': SvgPicture.asset(AppIcons.person), 'label': 'person'},
    {'icon': SvgPicture.asset(AppIcons.work), 'label': 'work'},
    {'icon': SvgPicture.asset(AppIcons.mail), 'label': 'mail'},
    {'icon': SvgPicture.asset(AppIcons.help), 'label': 'help'},
  ];

  changePage(int newPage) {
    selectedIndex = newPage;
    update();
  }
}
