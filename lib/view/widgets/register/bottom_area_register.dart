import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/auth/register/register_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/register/button_register.dart';

class BottomAreaRegister extends StatelessWidget {
  const BottomAreaRegister({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        const SizedBox(height: 30),
        //********************  Text  ******************* */
        Text(
          ' Are you a service provider',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.textGreenColor),
        ),
        const SizedBox(height: 50),
        //**************  Join Now button  ************* */
        SizedBox(
          width: width * 0.5,
          height: 68,
          child: ButtonRegister(
            text: 'Join Now',
            fontSize: 22,
            onTap: () => registerController.goToRegisterAsServiceProvider(),
          ),
        ),
        //*************  Container  ************** */
        const SizedBox(height: 10),
        Container(
          width: width * 0.25,
          height: 5,
          color: AppColors.buttonGreen,
        )
      ],
    );
  }
}
