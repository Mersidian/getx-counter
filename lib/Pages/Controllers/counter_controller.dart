import 'package:get/get.dart';
import '../Models/counter_model.dart';

class CounterController extends GetxController {

  var counter = CounterModel(0).number.obs;
  var counter2 = CounterModel(0).number.obs;

  void incrementCounter () {
    counter++;
    update();
  }

  void decreaseCounter () {
    if (counter > 0) {
      counter--;
      update();
    }
  }

  void resetCounter () {
    counter.value = 0;
    update();
  }

  void incrementCounter2 () {
    counter2++;
    update();
  }

  void decreaseCounter2 () {
    if (counter2 > 0) {
      counter2--;
      update();
    }
  }

  void resetCounter2 () {
    counter2.value = 0;
    update();
  }
}