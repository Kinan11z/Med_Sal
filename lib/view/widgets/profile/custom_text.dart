import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class CustomTextProfile extends StatelessWidget {
  const CustomTextProfile(
      {super.key,
      required this.icon,
      required this.textIcon,
      required this.text});

  final IconData icon;
  final String textIcon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //*********************Icon ********************** */
            Icon(
              icon,
              color: AppColors.greyColor,
            ),
            const SizedBox(width: 10),
            //********************* Text Icon ********************** */
            Text(
              textIcon,
              style: const TextStyle(color: AppColors.greyColor),
            )
          ],
        ),
        //********************* Text ********************** */
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(text),
        )
      ],
    );
  }
}
