import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_theme.dart';
import 'package:med_sal/routes.dart';
import 'package:med_sal/view/widgets/bottomNavigationBar/bottom_navigation_bar.dart';

void main() {
  runApp(const MedSalApp());
}

class MedSalApp extends StatelessWidget {
  const MedSalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppBottomNavigationBar(),
      getPages: routes,
      theme: appTheme,
    );
  }
}
