import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/state_booking/state_booking_controller.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/app_button.dart';

class StateBookingPage extends StatelessWidget {
  const StateBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    StateBookingController controller = Get.put(StateBookingController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.stateBooking), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 4, child: Container()),
              const Text('Welcome'),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Ac id iaculis tristique proin egestas magna id.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: height * 0.05),
              AppButton(
                text: 'Services',
                onTap: () {
                  controller.goToEditingServices();
                },
              ),
              SizedBox(height: height * 0.05),
              AppButton(
                text: 'Products',
                onTap: () {
                  controller.goToEditingProducts();
                },
              ),
              SizedBox(height: height * 0.05),
              AppButton(
                text: 'Appointment',
                onTap: () {},
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
