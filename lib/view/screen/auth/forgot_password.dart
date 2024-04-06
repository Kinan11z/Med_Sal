import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/forgot_password/forgot_password_controller.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordController forgotPasswordController =
        Get.put(ForgotPasswordController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          'Forgot Password',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: Form(
          key: forgotPasswordController.forgotPasswordFormState,
          child: Column(
            children: [
              //*******************  Text *********************/
              SizedBox(height: height * 0.05),
              Text(
                'Pleas enter email',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              //********************  Email TextField  ******************* */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: TextFormFieldRegister(
                  validator: (val) {
                    return validate(type: 'email', min: 10, max: 40, val: val!);
                  },
                  controller: forgotPasswordController.email,
                  hintText: 'yourname @mail.com',
                  labelText: '   Email   ',
                  suffixIcon: const Icon(Icons.mail_outline),
                ),
              ),
              //********************  Send verification code Button  ******************* */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: ButtonRegister(
                  text: 'Send verification code',
                  fontSize: 16,
                  onTap: () {
                    forgotPasswordController.check();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
