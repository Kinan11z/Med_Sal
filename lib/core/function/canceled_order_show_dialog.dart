import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_icons.dart';

canceledOrderDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      backgroundColor: AppColors.red,
      content: SizedBox(
        height: 223,
        width: 390,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The Order has Canceled\n",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.white),
              ),
              SvgPicture.asset(AppIcons.pulseAlert)
            ],
          ),
        ),
      ),
    ),
  );
}
