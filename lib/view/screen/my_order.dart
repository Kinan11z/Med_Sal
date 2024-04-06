import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/core/constant/app_theme.dart';
import 'package:med_sal/view/widgets/my_order/my_order_buttons.dart';
import 'package:med_sal/view/widgets/my_order/my_order_enter_your_information.dart';
import 'package:med_sal/view/widgets/my_order/my_order_row.dart';

void main() {
  runApp(const MedSalApp());
}

class MedSalApp extends StatelessWidget {
  const MedSalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyOrderPage(),
      theme: appTheme,
    );
  }
}

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Order',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //***************  Text  ************ */
              SizedBox(height: height * 0.02),
              Text(
                'Pleas Determine Place of Delivery',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.greyButtonColor),
              ),
              //***************  Image  ************ */
              SizedBox(height: height * 0.02),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(AppImages.myOrder),
              ),
              //***************  Text  ************ */
              SizedBox(height: height * 0.02),
              Text(
                'Pleas Determine Place of Delivery',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.greyButtonColor),
              ),
              SizedBox(height: height * 0.02),
              //************  My Order Row  *************** */
              const MyOrderRow(),
              //************  Enter Your Information  *************** */
              const EnterYourInformation(),
              SizedBox(height: height * 0.04),
              //************  My Order Buttons  *************** */
              const MyOrderButtons()
            ],
          ),
        ),
      ),
    );
  }
}
