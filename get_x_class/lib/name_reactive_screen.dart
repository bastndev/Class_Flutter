import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_class/reactive_controller.dart';

class NameReactiveScreen extends StatelessWidget {
  const NameReactiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReactiveController reactiveController = Get.put(ReactiveController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Reactive Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Name: ${reactiveController.name}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              onChanged: reactiveController.changeName,
              // decoration: const InputDecoration(labelText: 'Enter your name
            )
          ],
        ),
      ),
    );
  }
}
