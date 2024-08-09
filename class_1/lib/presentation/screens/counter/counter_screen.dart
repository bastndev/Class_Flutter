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
      floatingActionButton:  const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh),
          SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1),
          SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one,),
        ],
      ),
    );
  }
}

// --- -- --- 3 buttons in bottom
class CustomButton extends StatelessWidget {
  final IconData icon;

  const CustomButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
