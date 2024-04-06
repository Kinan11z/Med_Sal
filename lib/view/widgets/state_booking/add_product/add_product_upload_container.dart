import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/state_booking/add_product/upload_container.dart';

class AddProductUploadContainer extends StatelessWidget {
  const AddProductUploadContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        SizedBox(
          height: height * 0.35,
          width: width,
        ),
        Positioned(
          top: height * 0.05,
          child: Container(
            height: height * 0.3,
            width: width * 0.9,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyColor),
                borderRadius: BorderRadius.circular(10)),
            child: const Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                //*************  Upload Container Contain  *************** */
                child: UploadContainerContain()),
          ),
        ),
        Positioned(
          top: 25,
          left: 15,
          child: Container(
            width: width * 0.6,
            height: 20,
            color: AppColors.white,
          ),
        ),
        Positioned(
          top: 25,
          left: 30,
          child: Text(
            'Upload photos of Product',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
