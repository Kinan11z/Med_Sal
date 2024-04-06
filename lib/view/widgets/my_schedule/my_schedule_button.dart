import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class MyScheduleButton extends StatelessWidget {
  const MyScheduleButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appBarColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.greyBorderColor),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
