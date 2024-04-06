import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';

class CircleProductImage extends StatelessWidget {
  const CircleProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 125,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
            color: AppColors.shadowContainerCategoryColor,
          ),
        ],
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(AppImages.product),
      ),
    );
  }
}
