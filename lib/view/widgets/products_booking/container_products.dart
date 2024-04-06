import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/products_data.dart';
import 'package:med_sal/view/widgets/products_booking/text_container_product.dart';

class ContainerProducts extends StatelessWidget {
  const ContainerProducts({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 208,
      decoration: BoxDecoration(
          //***************  Shadow  ********************/
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
              color: AppColors.shadowContainerCategoryColor,
            ),
          ],
          color: AppColors.greyCardColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: AppColors.containerGreenColor)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //******************  Name Product Text  *******************/
            Text(productsData[index]['name']!),
            const SizedBox(height: 5),
            //******************  Company Product Text  *******************/
            TextContainerProduct(
                text1: 'Company: ', text2: productsData[index]['Company']!),
            //******************  Cost Product Text  *******************/
            const SizedBox(height: 7),
            TextContainerProduct(
                text1: 'Cost: ', text2: productsData[index]['Cost']!),
            //******************  Quantity Product Text  *******************/
            const SizedBox(height: 7),
            TextContainerProduct(
                text1: 'Quantity: ', text2: productsData[index]['Quantity']!),
            //******************  Descreption Product Text  *******************/
            const SizedBox(height: 7),
            TextContainerProduct(
                text1: 'Descreption: ',
                text2: productsData[index]['Descreption']!),
            //******************  Date of request Product Text  *******************/
            const SizedBox(height: 7),
            TextContainerProduct(
                text1: 'Date of request: ',
                text2: productsData[index]['Date of request']!),
          ],
        ),
      ),
    );
  }
}
