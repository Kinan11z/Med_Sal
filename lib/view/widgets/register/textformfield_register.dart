import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class TextFormFieldRegister extends StatelessWidget {
  const TextFormFieldRegister(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.suffixIcon,
      this.readOnly = false,
      required this.controller,
      this.validator});

  final String hintText;
  final String labelText;
  final Widget suffixIcon;
  final bool readOnly;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.greyColor),
          label: Padding(
            padding: const EdgeInsets.only(left: 30, right: 10),
            child: Text(labelText),
          ),
          suffixIconColor: AppColors.greyColor,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: suffixIcon,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      readOnly: readOnly,
    );
  }
}
