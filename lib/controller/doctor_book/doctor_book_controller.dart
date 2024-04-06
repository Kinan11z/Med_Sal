import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class DoctorBookController extends GetxController {
  int? index;

  setIndex(int value) {
    index = value;
    update();
  }

  goToDoctorAppointment() {
    Get.toNamed(AppRoute.doctorAppointment);
  }
}
