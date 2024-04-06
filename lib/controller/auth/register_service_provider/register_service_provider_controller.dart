import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class RegisterServiceProviderController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController contactNumber;
  late TextEditingController businesName;
  late TextEditingController serviceType;
  late TextEditingController bankData;
  late TextEditingController uploadFile;
  late GlobalKey<FormState> resetPasswordFormState;
  goToCheckEmail() {
    Get.offNamed(AppRoute.checkEmail);
  }

  register() async {
    var formdata = resetPasswordFormState.currentState;
    if (formdata!.validate()) {
      goToCheckEmail();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    contactNumber = TextEditingController();
    businesName = TextEditingController();
    serviceType = TextEditingController();
    bankData = TextEditingController();
    uploadFile = TextEditingController();
    resetPasswordFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    contactNumber.dispose();
    confirmPassword.dispose();
    businesName.dispose();
    serviceType.dispose();
    bankData.dispose();
    uploadFile.dispose();
    super.dispose();
  }
}
