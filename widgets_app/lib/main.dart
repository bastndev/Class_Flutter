import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/routes/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main(List<String> args) {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      // --- --- -- Only have 0 to 7 colors
      theme: AppTheme(selectedColor: 0).getTheme(),
      // --- -- --- --- Open the app with the HomeScreen with go_router
      routerConfig: appRouter,
    );
  }
}
