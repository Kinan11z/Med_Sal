import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/category/details_service_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/details_service/details_service_container.dart';

class DetailsService extends StatelessWidget {
  const DetailsService({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsServiceController detailsServiceController =
        Get.put(DetailsServiceController());

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'details',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: AppColors.white,
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SizedBox(height: height),
          SizedBox(
            width: width,
            height: height * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                AppImages.room,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              top: height * 0.27,
              left: height * 0.1 / 4,
              child: DetailsServiceContainer(
                  index: detailsServiceController.index!))
        ],
      ),
    );
  }
}
