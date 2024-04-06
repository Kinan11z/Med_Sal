import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class HomePageController extends GetxController {
  String language = 'english';
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }

  goToRegister() {
    Get.toNamed(AppRoute.register);
  }

  changeLanguage(String value) {
    language = value;
    update();
  }

  openDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }
}
