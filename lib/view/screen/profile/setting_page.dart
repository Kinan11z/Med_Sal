import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/profile/setting_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/view/widgets/profile/setting_container.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.black),
        ),
        leading: const Icon(Icons.settings_outlined),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.05),
              Text(
                'Account',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: AppColors.buttonGreen),
              ),
              SizedBox(height: height * 0.03),
              SettingContainer(
                text: 'Edit My Profile',
                icon: AppIcons.edit,
                onTap: () {},
              ),
              SizedBox(height: height * 0.02),
              SettingContainer(
                text: 'Change Password',
                icon: AppIcons.syncLock,
                onTap: () {
                  settingController.goToChangePassword();
                },
              ),
              SizedBox(height: height * 0.02),
              SettingContainer(
                text: 'Help',
                icon: AppIcons.notListedLocation,
                onTap: () {},
              ),
              SizedBox(height: height * 0.02),
              SettingContainer(
                text: 'Dark mode',
                icon: AppIcons.clearNight,
                onTap: () {},
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.09,
                child: ButtonRegister(
                  text: 'Logout',
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
