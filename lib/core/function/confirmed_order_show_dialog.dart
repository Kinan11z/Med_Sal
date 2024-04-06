import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

confirmedOrderDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      backgroundColor: AppColors.buttonGreen,
      content: SizedBox(
        height: 223,
        width: 390,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.star_border, color: AppColors.white),
              ),
              Text(
                "The Order has Confirmed",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.white),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.star_border, color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
