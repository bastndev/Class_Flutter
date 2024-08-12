import 'package:class_2/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // only have 5 themes
      theme: AppTheme(selectorColor: 1).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter APP'),
          centerTitle: true,
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text('Click me'),
          ),
        ),
      ),
    );
  }
}
