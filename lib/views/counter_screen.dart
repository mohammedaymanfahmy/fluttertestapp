import 'package:counter_app_using_getx_and_localization/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
// create new instance of controller
// register controller to getx management system
  final CounterController counterController = Get.put(CounterController());

  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                Text('${'counter_value'.tr} : ${counterController.counter}')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text('increment'.tr),
            )
          ],
        ),
      ),
    );
  }
}
