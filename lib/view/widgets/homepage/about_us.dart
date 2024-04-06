import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        SizedBox(
          height: 750,
          width: width,
        ),
        //************************************************ */
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              width: 162,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(160),
                  ),
                  border: Border.all(
                      width: 1, color: AppColors.containerGreenColor)),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text('About Us',
                    style: Theme.of(context).textTheme.labelLarge),
              ),
            ),
          ),
        ),
        //************************************* */
        Positioned(
          top: 120,
          child: Container(
            width: width * 0.85,
            height: 569,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(180),
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(8, 203, 156, 1),
                    Color.fromRGBO(9, 133, 117, 0),
                  ],
                ),
                border:
                    Border.all(width: 1, color: AppColors.containerGreenColor)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 40, top: 50),
              child: Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Sed commodo faucibus accumsan faucibus nunc gravida.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Sed commodo faucibus accumsan faucibus nunc gravida.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
