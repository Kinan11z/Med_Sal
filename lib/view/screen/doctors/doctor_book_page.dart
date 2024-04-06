import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/doctor_book/doctor_book_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/doctors/doctor_book/info_column_doctor_book.dart';
import 'package:med_sal/view/widgets/doctors/doctor_book/info_row_doctor_book.dart';

class DoctorBookPage extends StatelessWidget {
  const DoctorBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    DoctorBookController doctorBookController = Get.put(DoctorBookController());
    int index = doctorBookController.index!;
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctor Book',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //************  Info Row Doctor Book  *********** */
              SizedBox(height: height * 0.01),
              SizedBox(
                width: width * 0.9,
                child: InfoRowDoctorBook(index: index),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.02),
                child: Container(
                  width: width * 0.9,
                  height: height * 0.55,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        width: 1, color: AppColors.containerGreenColor),
                  ),
                  //************  Info Column Doctor Book  *********** */
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InfoColumnDoctorBook(index: index)),
                ),
              ),

              SizedBox(height: height * 0.05),
              //************  Take appiontment Button  *********** */
              SizedBox(
                height: height * 0.1,
                child: AppButton(
                  text: 'Take appiontment',
                  onTap: () {
                    doctorBookController.goToDoctorAppointment();
                  },
                ),
              ),
              SizedBox(height: height * 0.05)
            ],
          ),
        ),
      ),
    );
  }
}
