import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class AvailableDoctorController extends GetxController {
  String? textService;

  textServiceValue(String value) {
    textService = value;
    update();
  }

  goToDoctorBook() {
    Get.toNamed(AppRoute.doctorBook);
  }
}
