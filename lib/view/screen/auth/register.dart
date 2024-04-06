import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/auth/register/register_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/bottom_area_register.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'Register As Patient',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.black),
        ),
      ),
      //********************  Body  ******************* */
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                width: width * 0.9,
                child: Form(
                  key: registerController.registerFormState,
                  child: Column(
                    children: [
                      //********************  Email TextField  ******************* */
                      SizedBox(height: height * 0.02),
                      Expanded(
                        child: TextFormFieldRegister(
                          controller: registerController.email,
                          validator: (val) {
                            return validate(
                                type: 'email', min: 10, max: 40, val: val!);
                          },
                          hintText: 'yourname @mail.com',
                          labelText: 'Email',
                          suffixIcon: const Icon(Icons.mail_outline),
                        ),
                      ),
                      //********************  Password TextField  ******************* */
                      SizedBox(height: height * 0.02),
                      Expanded(
                        child: TextFormFieldRegister(
                          controller: registerController.password,
                          validator: (val) {
                            return validate(
                                type: 'password', min: 10, max: 40, val: val!);
                          },
                          hintText: 'At least 8 characters',
                          labelText: 'Password',
                          suffixIcon: SvgPicture.asset(
                            AppIcons.visibilityLock,
                          ),
                        ),
                      ),
                      //********************  Confirm Password TextField  ******************* */
                      SizedBox(height: height * 0.02),
                      Expanded(
                        child: TextFormFieldRegister(
                          validator: (val) {
                            return validate(
                                type: 'password', min: 10, max: 40, val: val!);
                          },
                          controller: registerController.confirmPassword,
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      //********************  Register Button  ******************* */
                      SizedBox(height: height * 0.02),
                      ButtonRegister(
                        text: 'Register',
                        onTap: () => registerController.register(),
                      ),
                      SizedBox(height: height * 0.02),
                    ],
                  ),
                ),
              ),
            ),
            //********************  Bottom Area Register  ******************* */
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                color: AppColors.appBarColor,
                child: const BottomAreaRegister(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
