import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/myTime/my_time_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/app_horizontal_container.dart';

class ServiceAppoitmentContainer extends StatelessWidget {
  const ServiceAppoitmentContainer(
      {super.key, required this.times, required this.text});
  final List times;
  final String text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.8,
      height: height * 0.2,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(
                    height: 3,
                    width: 100,
                    child: AppHorizontalContainer(
                        color: AppColors.containerGreenColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: GetBuilder<MyTimeController>(
                init: MyTimeController(),
                builder: (controller) {
                  return GridView.builder(
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        controller.chooseTime(index);
                      },
                      child: Container(
                        width: width * 0.2,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            color: controller.buttonsState[index] == 0
                                ? AppColors.white
                                : AppColors.containerGreenColor,
                            border: Border.all(
                                color: AppColors.containerGreenColor),
                            borderRadius: BorderRadius.circular(45)),
                        alignment: Alignment.center,
                        child: Text(
                          times[index],
                          style: TextStyle(
                              color: controller.buttonsState[index] == 0
                                  ? AppColors.black
                                  : AppColors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
