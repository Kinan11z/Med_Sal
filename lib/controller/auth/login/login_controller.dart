import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late GlobalKey<FormState> loginFormState;
  bool isRememberMe = true;

  changeRememberMeState(bool val) {
    isRememberMe = val;
    update();
  }

  goToSuccessLogin() {
    Get.offNamed(AppRoute.successLogin);
  }

  goToForgotPassword() {
    Get.offNamed(AppRoute.forgotPassword);
  }

  goToRegister() {
    Get.toNamed(AppRoute.register);
  }

  login() async {
    var formdata = loginFormState.currentState;
    if (formdata!.validate()) {
      goToSuccessLogin();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    loginFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
