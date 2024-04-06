import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/home_page/home_page_controller.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (homePageController) {
        return Container(
          height: 30,
          decoration: BoxDecoration(border: Border.all()),
          child: DropdownButton<String>(
            underline: Container(),
            alignment: Alignment.topCenter,
            value: homePageController.language,
            items: const [
              DropdownMenuItem(
                value: 'english',
                child: Text(
                  '  EN',
                ),
              ),
              DropdownMenuItem(
                value: 'arabic',
                child: Text('  AR'),
              )
            ],
            onChanged: (val) {
              homePageController.changeLanguage(val!);
            },
          ),
        );
      },
    );
  }
}
