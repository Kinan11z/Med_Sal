import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/state_booking/add_product/yes_no_button.dart';

class UploadContainerContain extends StatelessWidget {
  const UploadContainerContain({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //**************  Image   ***************** */
            SizedBox(
              width: width * 0.35,
              height: height * 0.15,
              child: Image.asset(
                AppImages.upload,
                fit: BoxFit.fill,
              ),
            ),
            //**************  Image   ***************** */
            SizedBox(
              width: width * 0.35,
              height: height * 0.15,
              child: Image.asset(
                AppImages.upload,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
        //************* Yes Or No Button  ************** */
        const YesOrNoButton(
          text: 'Are you sure?',
        ),
      ],
    );
  }
}
