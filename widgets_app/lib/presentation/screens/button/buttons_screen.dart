import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/widget/custom_button.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonsView '),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.primary;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('ElevatedButton'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Hello'),
              icon: const Icon(Icons.add),
            ),
            // --- --- --
            FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Hello')),
            // ---- ---- ----
            OutlinedButton(onPressed: () {}, child: const Text('hello')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('hello'),
              icon: const Icon(Icons.add),
            ),
            // --- --- ---
            TextButton(onPressed: () {}, child: const Text('hello')),
            TextButton.icon(
              onPressed: () {},
              label: const Text('hello'),
              icon: const Icon(Icons.add),
            ),
            // -TODO: Add custom button
            const CustomButton(),
            // --- --- ---
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(theme),
                iconColor: WidgetStateProperty.all(Colors.white),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
