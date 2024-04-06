import 'package:animated_pin_input_text_field/animated_pin_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class CustomOtpVerify extends StatelessWidget {
  const CustomOtpVerify({super.key, required this.onChanged});

  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return PinInputTextField(
      pinLength: 8,
      boxShape: BoxShape.circle,
      borderColor: AppColors.greyColor,
      textStyle: Theme.of(context).textTheme.bodySmall!,
      focusBorderColor: AppColors.buttonGreen,
      onChanged: onChanged,
    );
  }
}
