import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/login/login_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/text_textbutton.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Form(
          key: loginController.loginFormState,
          child: Column(
            children: [
              //********************  Image  *********************/
              SizedBox(
                  height: height * 0.3,
                  width: width,
                  child: Image.asset(
                    AppImages.login,
                    fit: BoxFit.fill,
                  )),
              //********************  Email TextField  ******************* */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: TextFormFieldRegister(
                  controller: loginController.email,
                  validator: (val) {
                    return validate(type: 'email', min: 10, max: 40, val: val!);
                  },
                  hintText: 'yourname @mail.com',
                  labelText: 'Email',
                  suffixIcon: const Icon(Icons.mail_outline),
                ),
              ),
              //**************  Password TextField  ************* */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: TextFormFieldRegister(
                  controller: loginController.password,
                  validator: (val) {
                    return validate(
                        type: 'password', min: 10, max: 40, val: val!);
                  },
                  hintText: '********',
                  labelText: 'Password',
                  suffixIcon: SvgPicture.asset(
                    AppIcons.visibilityLock,
                  ),
                ),
              ),
              //***********  Remember me and  Forgot Password  *********** */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GetBuilder<LoginController>(
                          builder: (context) {
                            return Checkbox(
                              activeColor: AppColors.buttonGreen,
                              value: loginController.isRememberMe,
                              onChanged: (value) {
                                loginController.changeRememberMeState(value!);
                              },
                            );
                          },
                        ),
                        Text(
                          'Remember me',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        loginController.goToForgotPassword();
                      },
                      child: Text('Forgot Password?',
                          style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ],
                ),
              ),
              //********************  Login Button  ******************* */
              SizedBox(height: height * 0.06),
              SizedBox(
                width: width * 0.9,
                child: ButtonRegister(
                  text: 'Login',
                  onTap: () {
                    loginController.login();
                  },
                ),
              ),
              //********************  Text and TextButton  ******************* */
              SizedBox(height: height * 0.06),
              TextWithTextButton(
                text: 'Don’t have an account?',
                textButton: 'Create it',
                onTap: () {
                  loginController.goToRegister();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
