import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/doctors/search_doctor.dart';

class EnterYourInformation extends StatelessWidget {
  const EnterYourInformation({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //***************  Text  ************ */
        SizedBox(height: height * 0.02),
        Text(
          'Enter your information',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppColors.greyButtonColor),
        ),
        //***************  card number Text  ************ */
        SizedBox(height: height * 0.01),
        Text(
          'Card number',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppColors.greyColor),
        ),
        //***************  card number textField  ************ */
        SizedBox(height: height * 0.01),
        SizedBox(
          height: height * 0.06,
          child: const DoctorSearch(hintText: ' ', radius: 15),
        ),
        //***************  Name on card Text  ************ */
        SizedBox(height: height * 0.01),
        Text(
          'Name on card',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppColors.greyColor),
        ),
        //***************  Name on card textField  ************ */
        SizedBox(height: height * 0.01),
        SizedBox(
          height: height * 0.06,
          child: const DoctorSearch(hintText: ' ', radius: 15),
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            //***************  Exp date Text  ************ */
            Text(
              'Exp date',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.greyColor),
            ),
            SizedBox(width: width * 0.5),
            //***************  CVV/ CVC Text  ************ */
            Text(
              'CVV/ CVC',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.greyColor),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //***************  Exp date textField  ************ */
            SizedBox(
              height: height * 0.06,
              width: width * 0.3,
              child: const DoctorSearch(hintText: ' ', radius: 15),
            ),
            SizedBox(
              //***************  CVV/ CVC textField  ************ */
              height: height * 0.06,
              width: width * 0.3,
              child: const DoctorSearch(hintText: ' ', radius: 15),
            ),
          ],
        ),
      ],
    );
  }
}
