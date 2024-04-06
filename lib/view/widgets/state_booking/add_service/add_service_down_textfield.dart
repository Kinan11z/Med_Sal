import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/add_service/add_service_controller.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class AddServiceDownTextField extends StatelessWidget {
  const AddServiceDownTextField({super.key});

  @override
  Widget build(BuildContext context) {
    AddServiceController addServiceController = Get.put(AddServiceController());
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        //**********  Enter Discount TextField  ******** */
        SizedBox(height: height * 0.05),
        TextFormFieldRegister(
          controller: addServiceController.discount,
          hintText: 'Pleas Enter Discount %',
          labelText: '   Enter Discount   ',
          suffixIcon: const Icon(Icons.edit_outlined),
        ),
        SizedBox(height: height * 0.05),
        //**********  Total Cost TextField  ******** */
        TextFormFieldRegister(
          controller: addServiceController.totalCost,
          hintText: 'Total Cost',
          labelText: '   Total Cost   ',
          suffixIcon: const Icon(Icons.edit_outlined),
        ),
      ],
    );
  }
}
