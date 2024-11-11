import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
