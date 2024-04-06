import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            color: AppColors.containerGreenColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
