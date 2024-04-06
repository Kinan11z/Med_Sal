import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/add_product/add_product_controller.dart';
import 'package:med_sal/core/function/validate.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';
import 'package:med_sal/view/widgets/state_booking/add_product/add_product_upload_container.dart';
import 'package:med_sal/view/widgets/state_booking/add_product/yes_no_button.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddProductController addProductController = Get.put(AddProductController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADD Product',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Form(
          key: addProductController.addProductFormState,
          child: ListView(
            children: [
              // SizedBox(height: height * 0.05),
              //****************  Upload Container  ********************* */
              const AddProductUploadContainer(),
              //**********  Enter Name of Service TextField  ******** */
              SizedBox(height: height * 0.05),
              TextFormFieldRegister(
                controller: addProductController.nameOfService,
                validator: (val) {
                  return validate(
                      type: 'Name of Service', min: 10, max: 40, val: val!);
                },
                hintText: 'Pleas Enter Name of Service',
                labelText: '   Enter Name of Service   ',
                suffixIcon: const Icon(Icons.edit_outlined),
              ),
              SizedBox(height: height * 0.05),
              //**********  Enter Cost TextField  ******** */
              TextFormFieldRegister(
                controller: addProductController.cost,
                validator: (val) {
                  return validate(
                      type: 'Cost Service', min: 10, max: 40, val: val!);
                },
                hintText: 'Pleas Enter Cost',
                labelText: '   Enter Cost   ',
                suffixIcon: const Icon(Icons.edit_outlined),
              ),
              //************* Yes Or No Button  ************** */
              SizedBox(height: height * 0.02),
              const YesOrNoButton(text: 'Have a Discount?'),
              //**********  Enter Discount TextField  ******** */
              SizedBox(height: height * 0.05),
              TextFormFieldRegister(
                controller: addProductController.discount,
                hintText: 'Pleas Enter Discount %',
                labelText: '   Enter Discount   ',
                suffixIcon: const Icon(Icons.edit_outlined),
              ),
              //***************   Confirm Button   ************** */
              SizedBox(height: height * 0.08),
              AppButton(
                text: 'Confirm',
                onTap: () {
                  addProductController.addProduct();
                },
              ),
              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
