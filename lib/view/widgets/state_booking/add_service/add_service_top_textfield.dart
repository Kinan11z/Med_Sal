import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/add_service/add_service_controller.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class AddServiceTopTextField extends StatelessWidget {
  const AddServiceTopTextField({super.key});

  @override
  Widget build(BuildContext context) {
    AddServiceController addServiceController = Get.put(AddServiceController());

    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        //**********  Enter Name of Service TextField  ******** */
        TextFormFieldRegister(
          controller: addServiceController.nameOfService,
          validator: (val) {
            return validate(type: 'name', min: 10, max: 40, val: val!);
          },
          hintText: 'Pleas Enter Name of Service',
          labelText: 'Enter Name of Service',
          suffixIcon: const Icon(Icons.edit_outlined),
        ),
        SizedBox(height: height * 0.05),
        //**********  Enter Name of Category TextField  ******** */
        TextFormFieldRegister(
          controller: addServiceController.nameOfCategory,
          validator: (val) {
            return validate(type: 'name', min: 10, max: 40, val: val!);
          },
          hintText: 'Pleas Enter Name of Category',
          labelText: 'Enter Name of Category',
          suffixIcon: const Icon(Icons.edit_outlined),
        ),
        SizedBox(height: height * 0.05),
        //**********  Enter Cost TextField  ******** */
        TextFormFieldRegister(
          controller: addServiceController.cost,
          validator: (val) {
            return validate(type: 'name', min: 10, max: 40, val: val!);
          },
          hintText: 'Pleas Enter Cost',
          labelText: 'Enter Cost',
          suffixIcon: const Icon(Icons.edit_outlined),
        ),
      ],
    );
  }
}
