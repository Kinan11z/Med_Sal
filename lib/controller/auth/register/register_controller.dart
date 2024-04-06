import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class RegisterController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late GlobalKey<FormState> registerFormState;
  goToCheckEmail() {
    Get.offNamed(AppRoute.checkEmail);
  }

  goToRegisterAsServiceProvider() {
    Get.toNamed(AppRoute.registerServiceProvider);
  }

  register() async {
    var formdata = registerFormState.currentState;
    if (formdata!.validate()) {
      goToCheckEmail();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    registerFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
