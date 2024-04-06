import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/doctor/doctor_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/doctors_data.dart';

class ContainerDoctors extends StatelessWidget {
  const ContainerDoctors({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    DoctorController doctorController = Get.put(DoctorController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: () => doctorController.goToService(index),
      child: Container(
        width: width * 0.9,
        height: height * 0.1,
        decoration: BoxDecoration(
            //***************  Shadow  ********************/
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                spreadRadius: 0,
                blurRadius: 4,
                color: Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ],
            color: AppColors.greyCardColor,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: AppColors.containerGreenColor)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(doctorsData[index]['name']!),
              SvgPicture.asset(doctorsData[index]['icon']!)
            ],
          ),
        ),
      ),
    );
  }
}
