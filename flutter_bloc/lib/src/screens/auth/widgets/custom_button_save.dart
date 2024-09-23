import 'package:flutter/material.dart';

class SaveButtonSave extends StatelessWidget {
  const SaveButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: () {},
      icon: const Icon(Icons.save),
      label: const Text('Create new user '),
    );
  }
}
