import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class EditingProductController extends GetxController {
  goToAddProduct() {
    Get.toNamed(AppRoute.addProduct);
  }
}
