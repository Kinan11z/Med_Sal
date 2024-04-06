import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/doctor_book/doctor_book_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/my_schedule_data.dart';

class MyScheduleDate extends StatelessWidget {
  const MyScheduleDate({super.key, required this.time, required this.color});

  final String time;
  final Color color;
  @override
  Widget build(BuildContext context) {
    DoctorBookController indexController = Get.put(DoctorBookController());
    int index = indexController.index!;

    //**************************************** */
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(height: height * 0.01),
        Container(
          width: width,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(15),
              color: color),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined),
                    Text(
                      ' Up coming appiontment',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    '${myScheduleData[index][time]}',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'View',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: AppColors.viewButtonColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
