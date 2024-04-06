import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  late TextEditingController nameOfService;
  late TextEditingController cost;
  late TextEditingController discount;
  late GlobalKey<FormState> addProductFormState;

  addProduct() async {
    var formdata = addProductFormState.currentState;
    if (formdata!.validate()) {}
  }

  @override
  void onInit() {
    nameOfService = TextEditingController();
    cost = TextEditingController();
    discount = TextEditingController();
    addProductFormState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    nameOfService.dispose();
    cost.dispose();
    discount.dispose();
    super.dispose();
  }
}
