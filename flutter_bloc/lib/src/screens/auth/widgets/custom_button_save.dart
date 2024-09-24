import 'package:flutter/material.dart';

class SaveButtonSave extends StatelessWidget {
  final VoidCallback onPressed2;

  const SaveButtonSave({
    super.key,
    required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: onPressed2,
      icon: const Icon(Icons.save),
      label: const Text('Create new user'),
    );
  }
}