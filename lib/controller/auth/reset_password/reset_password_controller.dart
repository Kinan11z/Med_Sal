import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class ResetPasswordController extends GetxController {
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late GlobalKey<FormState> resetPasswordFormState;
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  reset() async {
    var formdata = resetPasswordFormState.currentState;
    if (formdata!.validate()) {
      goToLogin();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    resetPasswordFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
