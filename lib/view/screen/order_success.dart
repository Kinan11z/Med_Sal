import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/core/constant/app_theme.dart';
import 'package:med_sal/view/widgets/app_button.dart';

void main() {
  runApp(const MedSalApp());
}

class MedSalApp extends StatelessWidget {
  const MedSalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OrderSuccessPage(),
      theme: appTheme,
    );
  }
}

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            const Expanded(flex: 1, child: Text('Success')),
            Expanded(
              flex: 1,
              child: Text(
                'Yay, It’s Nice Order, It Will Arrive On Time',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 14),
              ),
            ),
            Expanded(flex: 5, child: Image.asset(AppImages.orderSuccess)),
            SizedBox(height: height * 0.05),
            Expanded(
              flex: 1,
              child: AppButton(
                text: 'Back To Home',
                onTap: () {},
              ),
            ),
            SizedBox(height: height * 0.05),
            Expanded(
              flex: 1,
              child: Text(
                'View Details',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Expanded(flex: 2, child: Image.asset(AppImages.orderSuccess2)),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }
}
