import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';

class WelcomeToMedSal extends StatelessWidget {
  const WelcomeToMedSal({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Container(
                width: 108,
                height: 122,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: Image.asset(
                    AppImages.rectangle52,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: "Welcome to\n",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                      text: 'MED-SAL',
                      style: TextStyle(
                          color: AppColors.containerGreenColor, fontSize: 18)),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: width * 0.1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 154,
                height: 166,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.greyColor),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  child: Image.asset(
                    AppImages.rectangle3,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
