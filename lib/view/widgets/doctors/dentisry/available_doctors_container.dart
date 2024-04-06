import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/available_doctor/available_doctor_controller.dart';
import 'package:med_sal/controller/doctor_book/doctor_book_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/available_doctor_data.dart';
import 'package:med_sal/view/widgets/app_button.dart';

class AvailableDoctorsContainer extends GetView<DoctorBookController> {
  const AvailableDoctorsContainer({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    DoctorBookController doctorBookController = Get.put(DoctorBookController());
    AvailableDoctorController availableDoctorController =
        Get.put(AvailableDoctorController());
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: 312,
      height: 75,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.greyColor),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //****************  Image  ******************** */
          SizedBox(width: width * 0.02),
          SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(availableDoctorData[index]['image']!),
            ),
          ),
          //****************  Text  ******************** */
          SizedBox(width: width * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //****************  Doctor name  ******************** */
              Text('Dr.${availableDoctorData[index]['first name']!}'),
              //****************  Doctor Type  ******************** */
              Text(
                availableDoctorData[index]['type']!,
                style: const TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ],
          ),
          //****************  Book Button  ******************** */
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: 80,
              height: 34,
              child: AppButton(
                text: 'Book',
                onTap: () {
                  doctorBookController.setIndex(index);
                  availableDoctorController.goToDoctorBook();
                },
              ),
            ),
          ),
          //****************  Icon Button  ******************** */
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
