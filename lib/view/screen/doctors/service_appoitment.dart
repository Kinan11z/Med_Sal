import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/service_appoitment/service_appoitment_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/core/function/canceled_order_show_dialog.dart';
import 'package:med_sal/core/function/confirmed_order_show_dialog.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/service_appointment.dart/service_appointment_listview.dart';
import 'package:med_sal/view/widgets/service_appointment.dart/service_appoitment_top_area.dart';

class ServiceAppoitmentPage extends StatelessWidget {
  const ServiceAppoitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    //**************************************** */
    ServiceAppoitmentController serviceAppoitmentController =
        Get.put(ServiceAppoitmentController());
    String title = serviceAppoitmentController.title!;

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title\n Appointment',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.01),
            //*************  Top Area  **************** */
            const ServiceAppoitmentTopArea(),
            SizedBox(height: height * 0.03),
            //*************  ListView  **************** */
            const Expanded(flex: 4, child: ServiceAppoitmentListView()),
            SizedBox(height: height * 0.03),
            //*************  Confirm Button  **************** */
            Expanded(
              flex: 1,
              child: AppButton(
                text: 'Confirm',
                onTap: () {
                  confirmedOrderDialog(context);
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            //*************  Cancel Button  **************** */
            Expanded(
              flex: 1,
              child: AppButton(
                text: 'Cancel',
                color: AppColors.red,
                onTap: () {
                  canceledOrderDialog(context);
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            //*************  Show my schedule Button  **************** */
            Expanded(
              flex: 1,
              child: AppButton(
                text: 'Show my schedule',
                color: AppColors.greyButtonColor,
                onTap: () {
                  serviceAppoitmentController.goToMySchedule();
                },
              ),
            ),
            SizedBox(height: height * 0.01),
          ],
        ),
      ),
    );
  }
}
