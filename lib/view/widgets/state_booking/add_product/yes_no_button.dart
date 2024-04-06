import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/app_button.dart';

class YesOrNoButton extends StatelessWidget {
  const YesOrNoButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //**************  Text   ***************** */
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(height: height * 0.01),
        //**************  Yes or No Button   ***************** */
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              //**************  Yes Button   ***************** */
              child: SizedBox(
                width: width * 0.2,
                height: height * 0.06,
                child: AppButton(
                  text: 'Yes',
                  onTap: () {},
                ),
              ),
            ),
            //**************  No Button   ***************** */
            SizedBox(
              width: width * 0.2,
              height: height * 0.06,
              child: AppButton(
                color: AppColors.greyBorderColor,
                borderColor: AppColors.greyBorderColor,
                textColor: AppColors.black,
                text: 'No',
                onTap: () {},
              ),
            )
          ],
        ),
      ],
    );
  }
}
