import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/categories/custom_category_container.dart';

class DoubleCategoryContainer extends StatelessWidget {
  const DoubleCategoryContainer({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Center(
      child: SizedBox(
        width: width * 0.8,
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              width: width,
            ),
            const CustomCategoryContainer(color: AppColors.containerBackColor),
            Positioned(
              top: 4,
              left: 10,
              child: CustomCategoryContainer(
                  text: text, color: AppColors.containerForwardColor),
            ),
          ],
        ),
      ),
    );
  }
}
