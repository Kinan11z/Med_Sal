import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/my_order/my_order_container.dart';

class MyOrderRow extends StatelessWidget {
  const MyOrderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MyOrderContainer(image: AppImages.paypal)),
        SizedBox(width: 10),
        Expanded(child: MyOrderContainer(image: AppImages.visa)),
        SizedBox(width: 10),
        Expanded(child: MyOrderContainer(image: AppImages.google)),
      ],
    );
  }
}
