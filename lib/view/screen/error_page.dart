import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/core/constant/app_routes.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Image.asset(
                    AppImages.error,
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: height * 0.1,
                child: ButtonRegister(
                  text: 'Go Home',
                  fontSize: 20,
                  onTap: () => Get.toNamed(AppRoute.homePage),
                ),
              ),
              SizedBox(
                height: height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
