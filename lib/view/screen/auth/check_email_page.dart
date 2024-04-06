import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/check_email/check_email_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailController checkEmailController = Get.put(CheckEmailController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //********************  Email Image  ******************* */
            const SizedBox(height: 30),
            Image.asset(AppImages.checkEmail),
            //********************  Text  ******************* */
            SizedBox(height: height * 0.1),
            const Text(
              'Check your email',
              style: TextStyle(
                  fontSize: 35,
                  color: AppColors.buttonGreen,
                  fontWeight: FontWeight.w400),
            ),
            //********************  Text  ******************* */
            SizedBox(height: height * 0.1),
            SizedBox(
              width: width * 0.85,
              child: const Text(
                'We just sent a verification\n code  over to \n *********er@gmail',
                textAlign: TextAlign.center,
              ),
            ),
            //********************  Enter Code Button  ******************* */
            SizedBox(height: height * 0.1),
            SizedBox(
              width: width * 0.9,
              child: ButtonRegister(
                text: 'Enter Code',
                onTap: () {
                  checkEmailController.goToVerifyCode();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
