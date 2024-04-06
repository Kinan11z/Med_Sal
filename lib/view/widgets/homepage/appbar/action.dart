import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/home_page/home_page_controller.dart';
import 'package:med_sal/core/constant/app_icons.dart';
import 'package:med_sal/view/widgets/homepage/appbar/custom_dropdownbutton.dart';

class ActionAppbarHomePage extends StatelessWidget {
  const ActionAppbarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        //********************** DropDownButton  *************************/
        const CustomDropdownButton(),
        SizedBox(width: width * 0.05),
        //********************** Filter Button  *************************/
        SvgPicture.asset(AppIcons.filterAlt),
        SizedBox(width: width * 0.03),
        //********************** List Button  *************************/
        InkWell(
            onTap: () => homePageController.openDrawer(context),
            child: SvgPicture.asset(AppIcons.list)),
        SizedBox(width: width * 0.05)
      ],
    );
  }
}
