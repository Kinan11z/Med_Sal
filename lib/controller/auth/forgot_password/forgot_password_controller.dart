import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController email;
  late GlobalKey<FormState> forgotPasswordFormState;

  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCode);
  }

  check() async {
    var formdata = forgotPasswordFormState.currentState;
    if (formdata!.validate()) {
      goToVerifyCode();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    forgotPasswordFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
