import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification/config/routes/app_router.dart';
import 'package:push_notification/config/theme/app_theme.dart';

import 'src/push_notification/presentation/bloc/notifications_bloc.dart';

void main(List<String> args) {
  runApp(MultiBlocProvider(
    providers: [BlocProvider(create: (_) => NotificationsBloc())],
    child: const MyApp(),
  ));
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
