import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/services_booking_data.dart';
import 'package:med_sal/view/widgets/products_booking/text_container_product.dart';

class ContainerServicesBooking extends StatelessWidget {
  const ContainerServicesBooking(
      {super.key, required this.index, required this.onTap});

  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 349,
        height: 247,
        decoration: BoxDecoration(
          //***************  Shadow  ********************/
          boxShadow: const [
            BoxShadow(
              offset: Offset(4, 0),
              spreadRadius: 0,
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
          color: AppColors.greyCardColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 0.5, color: AppColors.containerGreenColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //******************   name  Text  *******************/
              Text(
                servicesBookingData[index]['name']!,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 5),
              //******************  Services name  Text  *******************/
              TextContainerProduct(
                  text1: 'Services name ',
                  text2: servicesBookingData[index]['Services name']!),
              //******************  Doctor name Text  *******************/
              const SizedBox(height: 7),
              TextContainerProduct(
                  text1: 'Doctor name ',
                  text2: servicesBookingData[index]['Doctor name']!),
              //******************  Descreption Text  *******************/
              const SizedBox(height: 7),
              TextContainerProduct(
                  text1: 'Descreption ',
                  text2: servicesBookingData[index]['Descreption']!),
              //******************  Source Text  *******************/
              const SizedBox(height: 7),
              TextContainerProduct(
                  text1: 'Source ',
                  text2: servicesBookingData[index]['Source']!),
              //******************  Cost Text  *******************/
              const SizedBox(height: 7),
              TextContainerProduct(
                  text1: 'Cost ',
                  text2: '${servicesBookingData[index]['Cost']!}\$'),
              //******************  Date & Time Text  *******************/
              const SizedBox(height: 7),
              TextContainerProduct(
                  text1: 'Date & Time ',
                  text2: servicesBookingData[index]['Date & Time']!),
            ],
          ),
        ),
      ),
    );
  }
}
