import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class StateBookingController extends GetxController {
  goToEditingServices() {
    Get.toNamed(AppRoute.editingServices);
  }

  goToEditingProducts() {
    Get.toNamed(AppRoute.editingProducts);
  }
}
