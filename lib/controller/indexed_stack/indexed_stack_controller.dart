import 'package:get/get.dart';

class IndexedStackController extends GetxController {
  int index = 0;

  changeIndex(int val) {
    index = val;
    update();
  }
}
