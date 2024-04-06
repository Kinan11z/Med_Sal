import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fontSize = 18,
    this.radius = 10,
    this.color = AppColors.containerGreenColor,
    this.borderWidth = 0,
    this.borderColor = AppColors.containerGreenColor,
    this.textColor = AppColors.white,
  });

  final String text;
  final Function()? onTap;
  final double fontSize;
  final double radius;
  final double borderWidth;
  final Color color;
  final Color borderColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 53,
        decoration: BoxDecoration(
            border: Border.all(width: borderWidth, color: borderColor),
            color: color,
            borderRadius: BorderRadius.circular(radius)),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
