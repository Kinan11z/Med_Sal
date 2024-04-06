import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/verify_code/verify_code_controller.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/otp_textfield.dart';
import 'package:med_sal/view/widgets/register/text_textbutton.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeController verifyCodeController = Get.put(VerifyCodeController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //********************  Text  ******************* */
            SizedBox(height: height * 0.1),
            Text(
              'Please enter a verification code  ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            //********************  OTP Field  ******************* */
            SizedBox(height: height * 0.05),
            SizedBox(
                width: width * 0.9,
                child: CustomOtpVerify(
                  onChanged: (val) {},
                )),
            //********************  Verify Button  ******************* */
            SizedBox(height: height * 0.05),
            SizedBox(
              width: width * 0.9,
              child: ButtonRegister(
                text: 'Verify',
                onTap: () {
                  verifyCodeController.goToNextPage();
                },
              ),
            ),
            //********************  Text  ******************* */
            SizedBox(height: height * 0.05),
            const TextWithTextButton(
              text: 'Don’t receive code? ',
              textButton: 'Resend it',
            )
          ],
        ),
      ),
    );
  }
}
