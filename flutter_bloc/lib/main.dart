import 'package:flutter/material.dart';
import 'package:flutter_bloc/config/theme/app_theme.dart';
import 'package:flutter_bloc/config/routes/app_router.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( 
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
