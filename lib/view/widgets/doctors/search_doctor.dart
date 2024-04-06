import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class DoctorSearch extends StatelessWidget {
  const DoctorSearch({super.key, required this.hintText, this.radius = 10});

  final String hintText;
  final double radius;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width * 0.9,
      height: height * 0.1,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
              fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
