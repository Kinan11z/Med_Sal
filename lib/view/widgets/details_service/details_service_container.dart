import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/services_booking_data.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/products_booking/text_container_product.dart';

class DetailsServiceContainer extends StatelessWidget {
  const DetailsServiceContainer({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.9,
      height: height * 0.6,
      decoration: BoxDecoration(
          color: AppColors.greyCardColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2, color: AppColors.containerGreenColor)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //******************  Name Product Text  *******************/
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(servicesBookingData[index]['name']!),
                    const SizedBox(height: 5),
                    //******************  Time requested Text  *******************/
                    TextContainerProduct(
                        text1: 'Time requested ',
                        text2: servicesBookingData[index]['Time requested']!),
                    //******************  Cost Text  *******************/
                    const SizedBox(height: 7),
                    TextContainerProduct(
                        text1: 'Cost ',
                        text2: '${servicesBookingData[index]['Cost']!}\$'),
                    //******************  Discount Text  *******************/
                    const SizedBox(height: 7),
                    TextContainerProduct(
                        text1: 'Discount ',
                        text2: '${servicesBookingData[index]['Discount']!}%'),
                    //******************  Descreption Text  *******************/
                    const SizedBox(height: 7),
                    TextContainerProduct(
                        text1: 'Descreption ',
                        text2: servicesBookingData[index]['Descreption']!),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            left: width * 0.15,
            child: SizedBox(
              width: width * 0.6,
              child: AppButton(
                text: 'Buy Now',
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
