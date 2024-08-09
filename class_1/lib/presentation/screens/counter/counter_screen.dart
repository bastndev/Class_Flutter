import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                number = 0;
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$number',
                style: const TextStyle(
                    fontSize: 150, fontWeight: FontWeight.w100)),
            Text('Click${number == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number = 0;
              });
            },
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              if (number == 0) return;
              setState(() {
                number--;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
