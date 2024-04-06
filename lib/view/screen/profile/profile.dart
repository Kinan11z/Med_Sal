import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/profile/profile_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/profile/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              //********************** Green Container Area  *************************/
              Container(
                height: height * 0.5,
                width: width,
                decoration: const BoxDecoration(
                  color: AppColors.buttonGreen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 30),
                    //********************** Text *************************/
                    Text('My Profile'),
                    SizedBox(height: 30),
                    //********************** Circle Image *************************/
                    SizedBox(
                        width: 220,
                        height: 220,
                        child: CircleAvatar(
                            backgroundImage: AssetImage(AppImages.profile)))
                  ],
                ),
              ),
              //********************** Setting Button  *************************/
              Positioned(
                  top: 35,
                  left: 20,
                  child: InkWell(
                      onTap: () {
                        profileController.goToSetting();
                      },
                      child: const Icon(Icons.settings_outlined)))
            ],
          ),
          //********************** Bottom Area  *************************/
          //*                                                          */
          //********************** Email Area  *************************/
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CustomTextProfile(
                  icon: Icons.mail_outline,
                  textIcon: 'Email',
                  text: 'yourname @mail.com',
                ),
                SizedBox(height: 20),
                Divider(),
                //********************** Phone Area  *************************/
                SizedBox(height: 20),
                CustomTextProfile(
                  icon: Icons.phone_outlined,
                  textIcon: 'Phone',
                  text: '08954752516',
                ),
                SizedBox(height: 20),
                Divider(),
                //********************** Date Area  *************************/
                SizedBox(height: 20),
                CustomTextProfile(
                  icon: Icons.date_range_outlined,
                  textIcon: 'Date of joining',
                  text: '25 / 10 / 2023',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
