import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class DentisryController extends GetxController {
  goToAvailableDoctor() {
    Get.toNamed(AppRoute.availableDoctors);
  }
}
