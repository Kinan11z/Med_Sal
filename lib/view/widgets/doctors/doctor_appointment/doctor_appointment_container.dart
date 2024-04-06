import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class DoctorAppointmentContainer extends StatelessWidget {
  const DoctorAppointmentContainer(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.9,
      height: height * 0.1,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.containerGreenColor),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text),
          SizedBox(width: width * 0.1),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
