import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/doctors/doctor_services_container.dart';
import 'package:med_sal/view/widgets/doctors/search_doctor.dart';

class ServiceOptical extends StatelessWidget {
  const ServiceOptical({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width,
      height: height * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        border: Border.all(width: 2, color: AppColors.containerGreenColor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03),
            //********************  Search Bar  ***********************/
            SizedBox(
              height: height * 0.05,
              child: const DoctorSearch(hintText: '       Search'),
            ),
            //********************  Text  ***********************/
            Text(
              'Lorem ipsum dolor sit amet consectetur. Eu enim lectus vitae urna.',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(height: height * 0.03),
            //********************  Text  ***********************/
            const Text('Services'),
            //********************  ListView Container  ***********************/
            Expanded(
              child: ListView(
                children: [
                  DoctorServicesContainer(
                    image: AppImages.profile,
                    text: 'Lasik eye surgery',
                    onTap: () {},
                  ),
                  DoctorServicesContainer(
                    image: AppImages.profile,
                    text: 'Lasek eye surgery',
                    onTap: () {},
                  ),
                  DoctorServicesContainer(
                    image: AppImages.profile,
                    text: 'Lasek eye surgery',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
