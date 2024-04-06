import 'package:flutter/material.dart';
import 'package:med_sal/data/datasource/static/products_data.dart';
import 'package:med_sal/view/widgets/products_booking/listview_products.dart';

class ProductsBooking extends StatelessWidget {
  const ProductsBooking({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products booking',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          //***************** ListView Products   ********************/
          child: ListView.builder(
            itemCount: productsData.length,
            itemBuilder: (context, index) => Column(
              children: [
                index == 0
                    ? const SizedBox(
                        height: 30,
                      )
                    : const SizedBox(),
                ListViewProducts(index: index),
                index == productsData.length - 1
                    ? const SizedBox(height: 30)
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
