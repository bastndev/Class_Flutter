import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter APP'),
        ),
        body: Center(
            child: FilledButton(
          onPressed: () {},
          child: const Text('Hello'),
        )),
      ),
    );
  }
}
