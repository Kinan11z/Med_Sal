import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/my_schedule/my_schedule_button.dart';
import 'package:med_sal/view/widgets/my_schedule/my_schedule_date.dart';

class MySchedulePage extends StatelessWidget {
  const MySchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Schedule',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              //**************  Old Appiontment Button  ******************* */
              SizedBox(
                width: width * 0.4,
                height: height * 0.05,
                child: MyScheduleButton(
                  text: 'Old Appiontment',
                  onTap: () {},
                ),
              ),
              //**************  Today Appiontment  ******************* */
              SizedBox(height: height * 0.02),
              const MyScheduleDate(
                  time: 'Today',
                  color: AppColors.myScheduleContainerGreenColor),
              //**************  Tomorow Appiontment  ******************* */
              SizedBox(height: height * 0.02),
              const MyScheduleDate(time: 'Tomorow', color: AppColors.white),
              //**************  This month Appiontment  ******************* */
              SizedBox(height: height * 0.02),
              const MyScheduleDate(time: 'This month', color: AppColors.white),
              //**************  Next appointment Appiontment  ******************* */
              SizedBox(height: height * 0.02),
              const MyScheduleDate(
                  time: 'Next appointment', color: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
