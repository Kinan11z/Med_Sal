import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/available_doctor/available_doctor_controller.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/doctors/dentisry/available_doctors_column.dart';

class AvailableDoctorsPage extends StatelessWidget {
  const AvailableDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          //***************  First Layer   *****************/
          SizedBox(height: height, width: width),
          //***************  Background Image  ****************/
          Stack(
            children: [
              SizedBox(
                width: width,
                height: height * 0.4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    AppImages.availableDoctors,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.28,
                left: width * 0.05,
                child: GetBuilder<AvailableDoctorController>(
                  init: AvailableDoctorController(),
                  builder: (controller) {
                    return Text(controller.textService!);
                  },
                ),
              )
            ],
          ),
          //**************  Available Doctors Area  ***************/
          Positioned(
              top: height * 0.35,
              left: width * 0.05,
              child: const AvailableDoctorsColumn())
        ],
      ),
    );
  }
}
