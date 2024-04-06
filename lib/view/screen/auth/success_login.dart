import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        children: [
          //******************* Success Container *********************/
          Container(
            width: width,
            height: height * 0.15,
            color: AppColors.appBarColor,
            alignment: Alignment.center,
            child: const Text('Success'),
          ),
          //*******************  Image *********************/
          Image.asset(AppImages.success),
          //*******************  Text *********************/
          Text(
            'You are Welcome ito Med-sal',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
