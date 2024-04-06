import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class MyOrderContainer extends StatelessWidget {
  const MyOrderContainer({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.greyColor)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
