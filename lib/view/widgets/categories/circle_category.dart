import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class CircleCategory extends StatelessWidget {
  const CircleCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 3,
          color: AppColors.containerGreenColor,
        ),
      ),
    );
  }
}
