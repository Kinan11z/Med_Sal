import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/add_service/add_service_controller.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/state_booking/add_service/add_service_down_textfield.dart';
import 'package:med_sal/view/widgets/state_booking/add_service/add_service_row.dart';
import 'package:med_sal/view/widgets/state_booking/add_service/add_service_top_textfield.dart';

class AddServicePage extends StatelessWidget {
  const AddServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    AddServiceController addServiceController = Get.put(AddServiceController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADD Service',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.05),
              //*************   Add Service Top TextField  *********** */
              Form(
                  key: addServiceController.addServiceFormState,
                  child: const AddServiceTopTextField()),
              SizedBox(height: height * 0.01),
              //*********  Text  ************ */
              Text(
                'Have a Discount?',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              //**********  Row Button  ************** */
              SizedBox(height: height * 0.01),
              const AddServiceRow(),
              //*************   Add Service Down TextField  *********** */
              const AddServiceDownTextField(),
              SizedBox(height: height * 0.05),
              //*************  Confirm Button   *************** */
              AppButton(
                text: 'Confirm',
                onTap: () {
                  addServiceController.addService();
                },
              ),
              SizedBox(
                height: height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
