import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/doctor_book/doctor_book_controller.dart';
import 'package:med_sal/controller/service_appoitment/service_appoitment_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/available_doctor_data.dart';
import 'package:med_sal/data/datasource/static/services_booking_data.dart';
import 'package:med_sal/view/widgets/service_appointment.dart/two_text_appointment.dart';

class ServiceAppoitmentTopArea extends StatelessWidget {
  const ServiceAppoitmentTopArea({super.key});

  @override
  Widget build(BuildContext context) {
    //**************************************** */
    DoctorBookController indexController = Get.put(DoctorBookController());
    int index = indexController.index!;
    String firstName = availableDoctorData[index]['first name']!;
    String lastName = availableDoctorData[index]['last name']!;

    //**************************************** */
    int cost = servicesBookingData[index]['Cost']!;
    int discount = servicesBookingData[index]['Discount']!;
    //**************************************** */
    ServiceAppoitmentController infoController =
        Get.put(ServiceAppoitmentController());
    return Column(
      children: [
        //*****************  Text Name   ************** */
        Text(
          'Dr: $firstName $lastName',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.containerGreenColor),
        ),
        //*****************  Text Cost   ************** */
        TwoTextAppointment(text1: 'Cost:', text2: '           $cost\$'),
        //*****************  Text Discount   ************** */
        TwoTextAppointment(text1: 'Discount:', text2: '      $discount%'),
        const Divider(),
        //*****************  Text Discount   ************** */
        TwoTextAppointment(
            text1: 'Total:',
            color1: AppColors.containerGreenColor,
            fontWeight: FontWeight.w500,
            text2: '           ${cost - (cost * discount / 100)}\$'),
        //*****************  Text Payment   ************** */
        GetBuilder<ServiceAppoitmentController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment: ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.containerGreenColor),
                ),
                Radio(
                  value: 'cache',
                  groupValue: infoController.payment,
                  onChanged: (value) {
                    infoController.setPayment(value.toString());
                  },
                ),
                const Text('Cache'),
                Radio(
                  value: 'card',
                  groupValue: infoController.payment,
                  onChanged: (value) {
                    infoController.setPayment(value.toString());
                  },
                ),
                const Text('Card'),
              ],
            );
          },
        ),
      ],
    );
  }
}
