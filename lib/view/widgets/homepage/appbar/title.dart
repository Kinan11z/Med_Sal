import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/app_icons.dart';

class TitleAppbarHomePage extends StatelessWidget {
  const TitleAppbarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.person,
        ),
        SizedBox(width: width * 0.06),
        SvgPicture.asset(
          AppIcons.call,
        ),
        SizedBox(width: width * 0.1),
        SvgPicture.asset(
          AppIcons.alternateEmail,
        ),
      ],
    );
  }
}
