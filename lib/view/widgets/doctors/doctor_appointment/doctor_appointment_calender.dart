import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.9,
      height: height * 0.4,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
              color: Color.fromRGBO(0, 0, 0, 0.25)),
        ],
        border: Border.all(width: 1, color: AppColors.containerGreenColor),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      //***************  Clipper  *************** */
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          //*******************  Date Range Picker  ************ */
          child: SfDateRangePicker(
            selectionColor: AppColors.containerGreenColor,
            headerStyle: const DateRangePickerHeaderStyle(
                backgroundColor: Colors.transparent),
            backgroundColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}
