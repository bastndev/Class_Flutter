import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_class/api_service.dart';
import 'package:get_x_class/counter_controller.dart';
import 'package:get_x_class/next_page.dart';

void main(List<String> args) async {
  Get.lazyPut<ApiService>(() => ApiService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CounterApp(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiService apiService = Get.find();
    // final apiService = Get.find<ApiService>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX API Service'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: apiService.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text('Data: ${snapshot.data}');
              }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const NextPage());
        },
        child: const Icon(Icons.navigate_next),
      ),
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
