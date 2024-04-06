import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/app_button.dart';

class StateBookingContainer extends StatelessWidget {
  const StateBookingContainer(
      {super.key, required this.index, required this.name});

  final int index;
  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      alignment: Alignment.bottomCenter,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.greyColor),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(-4, -4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 95,
                  height: 42,
                  child: AppButton(
                    radius: 15,
                    borderWidth: 1,
                    text: 'Delete',
                    color: AppColors.buttonGreen,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: width * 0.1),
                SizedBox(
                  width: 95,
                  height: 42,
                  child: AppButton(
                    radius: 15,
                    borderWidth: 1,
                    text: 'Modify',
                    color: AppColors.buttonGreen,
                    onTap: () {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 1)
          ],
        ),
      ),
    );
  }
}
