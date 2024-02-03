import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/counter_controller.dart';

final CounterController counterController = Get.put(CounterController());

Widget counterButton(IconData iconData, String operator) {
  return SizedBox(
    width: 70,
    height: 70,
    child: ElevatedButton(
      onPressed: () => {
        if (operator == '+')
          {Get.find<CounterController>().incrementCounter()}
        else if (operator == '-')
          {Get.find<CounterController>().decreaseCounter()}
        else if (operator == '0')
          {Get.find<CounterController>().resetCounter()}
        else if (operator == '++')
          {Get.find<CounterController>().incrementCounter2()}
        else if (operator == '--')
          {Get.find<CounterController>().decreaseCounter2()}
        else if (operator == '00')
          {Get.find<CounterController>().resetCounter2()}
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple[50],
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Icon(
        iconData,
        size: 25,
        color: Colors.black,
      ),
    ),
  );
}
