import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({super.key, required this.text, required this.onTap});

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.maxFinite,
          height: 60,
          decoration:
              BoxDecoration(border: Border.all(color: AppColors.greyColor)),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
