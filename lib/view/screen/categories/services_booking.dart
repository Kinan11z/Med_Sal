import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/category/details_service_controller.dart';
import 'package:med_sal/controller/category/services_booking_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/services_booking_data.dart';
import 'package:med_sal/view/widgets/app_horizontal_container.dart';
import 'package:med_sal/view/widgets/services_booking/container_services_booking.dart';

class ServicesBooking extends StatelessWidget {
  const ServicesBooking({super.key});

  @override
  Widget build(BuildContext context) {
    ServicesBookingController servicesBookingController =
        Get.put(ServicesBookingController());
    DetailsServiceController detailsServiceController =
        Get.put(DetailsServiceController());
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Services booking',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          //*****************  Column Services  ********************/
          child: Column(
            children: [
              Text(
                'Services',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              //************  Horizontal Container  ************* */
              const AppHorizontalContainer(
                color: AppColors.buttonGreen,
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  itemCount: servicesBookingData.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ContainerServicesBooking(
                      index: index,
                      onTap: () {
                        detailsServiceController.changeIndex(index);
                        servicesBookingController.goToDetailsPage();
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
