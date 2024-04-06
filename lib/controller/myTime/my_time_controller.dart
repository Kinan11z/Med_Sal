import 'package:get/get.dart';

class MyTimeController extends GetxController {
  List buttonsState = [0, 0, 0, 0, 0, 0];

  chooseTime(int newIndex) {
    buttonsState.asMap().forEach((index, value) {
      buttonsState[index] = index == newIndex ? 1 : 0;
    });
    update();
  }
}
