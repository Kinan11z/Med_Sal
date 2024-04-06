import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({
    super.key,
    required this.text,
    required this.onTap,
    this.fontSize = 18,
  });

  final String text;
  final Function()? onTap;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 53,
        decoration: BoxDecoration(
            color: AppColors.buttonGreen,
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: AppColors.white, fontSize: fontSize),
        ),
      ),
    );
  }
}
