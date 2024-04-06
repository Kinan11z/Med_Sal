import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/see_all.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //******************* Our Services Container *******************//
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 206,
            height: 57,
            decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: AppColors.containerGreenColor),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(160),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Our Services',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
        const SizedBox(height: 30),
        //****************** Text *******************//
        Text(
          'Lorem ipsum dolor sit amet consectetur. Sed commodo faucibus accumsan faucibus nunc gravida.',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        //******************* See All Text  Button*******************//
        Align(
          alignment: Alignment.centerRight,
          child: SeeAll(
            color: AppColors.smallTextGreenColor,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
