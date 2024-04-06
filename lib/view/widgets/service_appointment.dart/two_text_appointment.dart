import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class TwoTextAppointment extends StatelessWidget {
  const TwoTextAppointment(
      {super.key,
      required this.text1,
      required this.text2,
      this.color1 = AppColors.black,
      this.fontWeight = FontWeight.w400});

  final String text1;
  final String text2;
  final Color color1;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                  text: text1,
                  style: TextStyle(color: color1, fontWeight: fontWeight)),
            ],
          ),
        ),
        Text(text2, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
