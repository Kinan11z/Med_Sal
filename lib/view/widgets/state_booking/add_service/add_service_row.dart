import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/state_booking/add_service/add_service_circle_button.dart';

class AddServiceRow extends StatelessWidget {
  const AddServiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //***********  Yes Button   ********* */
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: AddServiceCircleButton(
            circleColor: AppColors.containerGreenColor,
            textColor: AppColors.white,
            text: 'yes',
          ),
        ),
        //***********  No Button   ********* */
        AddServiceCircleButton(
          circleColor: AppColors.greyBorderColor,
          textColor: AppColors.black,
          text: 'No',
        ),
      ],
    );
  }
}
