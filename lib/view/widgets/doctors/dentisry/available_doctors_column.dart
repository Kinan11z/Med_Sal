import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/available_doctor_data.dart';
import 'package:med_sal/view/widgets/doctors/dentisry/available_doctors_container.dart';

class AvailableDoctorsColumn extends StatelessWidget {
  const AvailableDoctorsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.9,
      height: height * 0.6,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 2, color: AppColors.containerGreenColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //****************  Text  ****************** */
                  Text('Available Doctors'),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            //****************  ListView  ****************** */
            Expanded(
              child: ListView.builder(
                itemCount: availableDoctorData.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: AvailableDoctorsContainer(index: index)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
