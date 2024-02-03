import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/counter_controller.dart';

class CounterNumber extends StatelessWidget {
  CounterNumber({super.key});

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
        init: CounterController(),
        builder: (value) {
          return Column(
            children: [
              Text(
                '${value.counter}',
                style: const TextStyle(fontSize: 45),
              ),
              Text(
                '${value.counter2}',
                style: const TextStyle(fontSize: 45),
              ),
            ],
          );
        });
  }
}
