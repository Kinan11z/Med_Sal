import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer(
      {super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final String icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: height * 0.1,
        decoration: BoxDecoration(
            color: AppColors.lightBrown,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.greyColor)),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
              ),
              SvgPicture.asset(icon)
            ],
          ),
        ),
      ),
    );
  }
}
