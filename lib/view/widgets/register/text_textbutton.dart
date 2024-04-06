import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton(
      {super.key, required this.text, required this.textButton, this.onTap});

  final String text;
  final String textButton;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //********************  Text  ******************* */
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        //********************  Text Button ******************* */
        InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Text(
                textButton,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.containerGreenColor),
              ),
              const SizedBox(height: 5),
              Container(
                width: 80,
                height: 3,
                color: AppColors.containerGreenColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
