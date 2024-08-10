import 'package:class_1/presentation/screens/box.dart';
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
      // --- -- --- 3 buttons in bottom
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                BoxContainer(color: Colors.red),
                SizedBox(width: 20),
                BoxContainer(color: Colors.orange),
                SizedBox(width: 20),
                BoxContainer(color: Colors.blue),
              ],
            ),
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
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              setState(() {
                number = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (number == 0) return; // quiere decir que si es 0 no aga nada
                number--;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                number++;
              });
            },
          ),
        ],
      ),
    );
  }
}

// --- -- --- 3 buttons in bottom
class CustomButton extends StatelessWidget {
  final IconData icon; //propiedad
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback:
          true, // hace que vibre el boton o de un sonido si no tiene vibracions
      elevation: 0, // sobra "shadow" del boton
      backgroundColor: Colors.orange,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
