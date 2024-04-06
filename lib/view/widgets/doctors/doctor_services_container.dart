import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class DoctorServicesContainer extends StatelessWidget {
  const DoctorServicesContainer(
      {super.key,
      required this.onTap,
      required this.image,
      required this.text});

  final Function()? onTap;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.greyColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(width: width * 0.05),
              SizedBox(
                  width: 90,
                  height: 88,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                  )),
              SizedBox(width: width * 0.05),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: width * 0.03),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
