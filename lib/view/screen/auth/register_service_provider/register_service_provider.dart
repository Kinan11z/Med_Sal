import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth/register_service_provider/register_service_provider_controller.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';
import 'package:med_sal/view/widgets/register_service_provider/text-field_bank_data.dart';

class RegisterServiceProvider extends StatelessWidget {
  const RegisterServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterServiceProviderController registerServiceProviderController =
        Get.put(RegisterServiceProviderController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register as a service provider',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Form(
          key: registerServiceProviderController.resetPasswordFormState,
          child: ListView(
            children: [
              //********************  Email TextField  ******************* */
              const SizedBox(height: 50),
              TextFormFieldRegister(
                validator: (val) {
                  return validate(type: 'email', min: 10, max: 40, val: val!);
                },
                controller: registerServiceProviderController.email,
                hintText: 'yourname @mail.com',
                labelText: 'Email',
                suffixIcon: const Icon(Icons.mail_outline),
              ),
              //********************  Password TextField  ******************* */
              const SizedBox(height: 50),
              TextFormFieldRegister(
                validator: (val) {
                  return validate(
                      type: 'password', min: 10, max: 40, val: val!);
                },
                controller: registerServiceProviderController.password,
                hintText: 'At least 8 characters',
                labelText: 'Password',
                suffixIcon: SvgPicture.asset(
                  AppIcons.visibilityLock,
                ),
              ),
              //********************  Confirm Password TextField  ******************* */
              const SizedBox(height: 50),

              TextFormFieldRegister(
                validator: (val) {
                  return validate(
                      type: 'confirm password',
                      min: 10,
                      max: 40,
                      val: val!,
                      password: registerServiceProviderController.password.text,
                      confirmPassword: registerServiceProviderController
                          .confirmPassword.text);
                },
                controller: registerServiceProviderController.confirmPassword,
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                suffixIcon: const Icon(Icons.visibility_off_outlined),
              ),
              //********************  Contact number TextField  ******************* */
              const SizedBox(height: 50),
              TextFormFieldRegister(
                validator: (val) {
                  return validate(type: 'phone', min: 10, max: 40, val: val!);
                },
                controller: registerServiceProviderController.contactNumber,
                hintText: '+963   123456789',
                labelText: 'Contact number',
                suffixIcon: const Icon(Icons.phone_outlined),
              ),
              //********************  Busines name TextField  ******************* */
              const SizedBox(height: 50),
              TextFormFieldRegister(
                  validator: (val) {
                    return validate(type: 'name', min: 5, max: 20, val: val!);
                  },
                  controller: registerServiceProviderController.businesName,
                  hintText: 'yourname @mail.com',
                  labelText: 'Busines name',
                  suffixIcon: const Icon(Icons.card_membership)),
              //********************  Service Type TextField  ******************* */
              const SizedBox(height: 50),
              TextFormFieldRegister(
                validator: (val) {
                  return validate(type: 'name', min: 5, max: 20, val: val!);
                },
                controller: registerServiceProviderController.serviceType,
                hintText: 'Enter service ',
                labelText: 'Service Type',
                suffixIcon: const Icon(Icons.edit_outlined),
              ),
              //********************  Bank data TextField  ******************* */
              const SizedBox(height: 50),
              BankDataTextField(
                controller: registerServiceProviderController.bankData,
              ),
              SizedBox(height: height * 0.05),
              Text(
                'Please Upload a file which contain information about you, and you services',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              //********************  Upload file TextField  ******************* */
              SizedBox(height: height * 0.05),
              TextFormFieldRegister(
                controller: registerServiceProviderController.uploadFile,
                hintText: 'Upload file ',
                labelText: '',
                suffixIcon: const Icon(Icons.file_upload_outlined),
              ),
              //********************  Sign up Button  ******************* */
              const SizedBox(height: 50),
              ButtonRegister(
                text: 'Sign up',
                onTap: () {
                  registerServiceProviderController.register();
                },
              ),
              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
