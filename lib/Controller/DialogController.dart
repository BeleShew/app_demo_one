import 'package:get/get.dart';

class DialogController extends GetxController {
  int count = 0;
  increment() {
    count++;
    update();
  }
}
