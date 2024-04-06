import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/reset_password/reset_password_controller.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController =
        Get.put(ResetPasswordController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          child: Form(
            key: resetPasswordController.resetPasswordFormState,
            child: Column(
              children: [
                //******************** New Password TextField  ******************* */
                SizedBox(height: height * 0.15),
                TextFormFieldRegister(
                  validator: (val) {
                    return validate(
                        type: 'password', min: 10, max: 40, val: val!);
                  },
                  controller: resetPasswordController.password,
                  hintText: '**********',
                  labelText: '   New Password   ',
                  suffixIcon: SvgPicture.asset(
                    AppIcons.visibilityLock,
                  ),
                ),
                //********************  Confirm Password TextField  ******************* */
                SizedBox(height: height * 0.1),
                TextFormFieldRegister(
                  validator: (val) {
                    return validate(
                        type: 'confirm password',
                        min: 10,
                        max: 40,
                        val: val!,
                        password: resetPasswordController.password.text,
                        confirmPassword:
                            resetPasswordController.confirmPassword.text);
                  },
                  controller: resetPasswordController.confirmPassword,
                  hintText: '**********',
                  labelText: '   Confirm Password   ',
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                ),
                //********************  Change Password Button  ******************* */
                SizedBox(height: height * 0.15),
                ButtonRegister(
                  text: 'Change Password',
                  fontSize: 16,
                  onTap: () {
                    resetPasswordController.reset();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
