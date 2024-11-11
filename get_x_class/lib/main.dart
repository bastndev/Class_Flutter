import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_class/counter_controller.dart';
// import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter App'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Hello ${controller.count}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
