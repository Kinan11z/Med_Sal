import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/data/datasource/static/available_doctor_data.dart';

class InfoRowDoctorBook extends StatelessWidget {
  const InfoRowDoctorBook({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    String name = availableDoctorData[index]['first name']!;
    String lastName = availableDoctorData[index]['last name']!;
    String type = availableDoctorData[index]['type']!;
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        //*****************  Image  **************** */
        const SizedBox(
          width: 120,
          height: 120,
          child: CircleAvatar(
            backgroundImage: AssetImage(AppImages.profile),
          ),
        ),
        SizedBox(width: width * 0.05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*****************  Dr name  **************** */
            Text(
              'Dr:$name $lastName',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: 16),
            ),
            //*****************  Dr Type  **************** */
            RichText(
              text: TextSpan(
                text: type,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColors.greyColor, fontWeight: FontWeight.w400),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SvgPicture.asset(AppIcons.tooth),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
