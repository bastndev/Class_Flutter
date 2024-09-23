import 'package:flutter/material.dart';

class CustomRegisterForm extends StatelessWidget {
  const CustomRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.primary;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: theme),
    );

    return TextFormField(
      onChanged: (value) {
        print('Email: $value');
      },
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: theme),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}