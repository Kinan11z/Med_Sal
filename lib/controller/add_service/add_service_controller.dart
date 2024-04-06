import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddServiceController extends GetxController {
  late TextEditingController discount;
  late TextEditingController totalCost;
  late TextEditingController nameOfService;
  late TextEditingController nameOfCategory;
  late TextEditingController cost;
  late GlobalKey<FormState> addServiceFormState;

  addService() async {
    var formdata = addServiceFormState.currentState;
    if (formdata!.validate()) {}
  }

  @override
  void onInit() {
    discount = TextEditingController();
    totalCost = TextEditingController();
    nameOfService = TextEditingController();
    nameOfCategory = TextEditingController();
    cost = TextEditingController();
    addServiceFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    discount.dispose();
    totalCost.dispose();
    nameOfCategory.dispose();
    nameOfService.dispose();
    cost.dispose();
    super.dispose();
  }
}
