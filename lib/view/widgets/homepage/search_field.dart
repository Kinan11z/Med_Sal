import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField(
      {super.key,
      required this.hintText,
      required this.suffixIcon,
      required this.suffixIconColor});

  final String hintText;
  final IconData suffixIcon;
  final Color suffixIconColor;

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
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(suffixIcon, color: suffixIconColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
