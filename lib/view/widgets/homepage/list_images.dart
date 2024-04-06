import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_images.dart';

class ListImages extends StatelessWidget {
  const ListImages({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppImages.doctors,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(width: 20)
            ],
          );
        },
      ),
    );
  }
}
