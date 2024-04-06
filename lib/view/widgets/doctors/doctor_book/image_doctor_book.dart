import 'package:flutter/material.dart';

class ImageDoctorBook extends StatelessWidget {
  const ImageDoctorBook({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width * 0.25,
      height: height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
