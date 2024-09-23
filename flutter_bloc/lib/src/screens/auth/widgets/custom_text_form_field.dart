import 'package:flutter/material.dart';

class CustomRegisterForm extends StatelessWidget {
  // aca van las propiedades que se le pueden pasar al widget
  final String? label;
  final String? hint;
  final String? errorMessage;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomRegisterForm({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.primary;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      // borderSide: BorderSide(color: theme),
    );

    return TextFormField(
      onChanged: (value) {
        // print('Email: $value');
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: theme),
        enabledBorder: border,
        focusedBorder: border.copyWith(borderSide: BorderSide(color: theme)),
        isDense: true,

        // --- --- --- Error Style
        errorText: 'Invalid email',
        errorBorder:
            border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder:
            border.copyWith(borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
