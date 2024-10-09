import 'package:flutter/material.dart';
import 'package:push_notification/config/theme/app_theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter APP'),
        ),
        body: const Center(
          child: Text('Push Notification'),
        ),
      ),
    );
  }
}
