import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/data/datasource/static/available_doctor_data.dart';
import 'package:med_sal/view/widgets/doctors/doctor_book/image_doctor_book.dart';
import 'package:med_sal/view/widgets/see_all.dart';

class InfoColumnDoctorBook extends StatelessWidget {
  const InfoColumnDoctorBook({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    String certification = availableDoctorData[index]['certification']!;
    String about = availableDoctorData[index]['about']!;
    // double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02),
          //*****************  Text  ***************** */
          const Text('Certification'),
          SizedBox(height: height * 0.01),
          //*****************  Text  ***************** */
          Text(
            certification,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: height * 0.02),
          //*****************  Text  ***************** */
          const Text('About'),
          SizedBox(height: height * 0.01),
          //*****************  Text  ***************** */
          Text(
            about,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //*****************  Text  ***************** */
              const Text('Gallery'),
              //***************** See All Text  ***************** */
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SeeAll(
                  color: AppColors.containerGreenColor,
                  onTap: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          //***************** Row Image  ***************** */
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageDoctorBook(image: AppImages.doctors),
              ImageDoctorBook(image: AppImages.doctors),
              ImageDoctorBook(image: AppImages.doctors),
            ],
          ),
          SizedBox(height: height * 0.1)
        ],
      ),
    );
  }
}
