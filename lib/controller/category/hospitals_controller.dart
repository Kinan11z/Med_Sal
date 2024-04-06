import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class HospitalsController extends GetxController {
  goToServicePage() {
    Get.toNamed(AppRoute.servicesBooking);
  }

  goToProductPage() {
    Get.toNamed(AppRoute.productsBooking);
  }
}
