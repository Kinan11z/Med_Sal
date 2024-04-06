import 'package:get/get.dart';
import 'package:med_sal/data/datasource/static/doctors_data.dart';

class DoctorController extends GetxController {
  goToService(int index) {
    Get.toNamed(doctorsData[index]['route']!);
  }
}
