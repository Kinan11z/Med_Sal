import 'package:flutter/material.dart';
import 'package:med_sal/view/widgets/products_booking/circle_product_image.dart';
import 'package:med_sal/view/widgets/products_booking/container_products.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //************  First Space  *********** */
        Stack(
          children: [
            SizedBox(
              width: 400,
              height: 250,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ContainerProducts(
                  index: index,
                ),
              ),
            ),
            const Positioned(left: 230, top: 10, child: CircleProductImage()),
          ],
        ),
      ],
    );
  }
}
