import 'package:class_2/config/theme/app_theme.dart';
import 'package:class_2/presentation/screen/chat/chat_screen.dart';
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
      theme: AppTheme(selectorColor: 3).theme(),
      home: const ChatScreen(),
    );
  }
}
