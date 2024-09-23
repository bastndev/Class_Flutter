import 'package:flutter/material.dart';

class ButtonSave extends StatelessWidget {
  const ButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: () {},
      icon: const Icon(Icons.save),
      label: const Text('Create new user'),
    );
  }
}
