import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/see_all.dart';

class ClientSay extends StatelessWidget {
  const ClientSay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //******************* Container and Text *******************//
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //******************* See All Text *******************//
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: SeeAll(
                color: AppColors.smallTextGreenColor,
                onTap: () {},
              ),
            ),
            //******************* What Our Clients Say Container *******************//
            Container(
              width: 136,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(160),
                ),
                border:
                    Border.all(width: 1, color: AppColors.containerGreenColor),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 20),
                child: Text(
                  'What Our  \nClients Say',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        //******************* Big container *******************//
        Stack(
          children: [
            Container(
              width: 350,
              height: 191,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.background)),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(270),
                  bottomRight: Radius.circular(160),
                  topRight: Radius.circular(160),
                ),
              ),
              //******************* Text *******************//
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 10),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 14),
                ),
              ),
            ),
            //******************* Person Image *******************//
            const Positioned(
              top: 60,
              left: 271,
              child: SizedBox(
                  width: 74,
                  height: 87,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppImages.lara),
                  )),
            ),
            //******************* Person name *******************//
            const Positioned(
              top: 140,
              left: 150,
              child: Text(
                'Lara Khalili',
              ),
            )
          ],
        ),
      ],
    );
  }
}
