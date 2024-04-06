import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/app_button.dart';

class MyOrderButtons extends StatelessWidget {
  const MyOrderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        AppButton(
          text: 'Confirm',
          onTap: () {},
        ),
        SizedBox(height: height * 0.02),
        AppButton(
          text: 'Cancel',
          color: AppColors.red,
          onTap: () {},
        ),
        SizedBox(height: height * 0.1),
      ],
    );
  }
}
