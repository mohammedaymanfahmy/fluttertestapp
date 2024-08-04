import 'package:get/get.dart';

class CounterController extends GetxController {
// observable // automatically notify listeners  when value changes
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}
