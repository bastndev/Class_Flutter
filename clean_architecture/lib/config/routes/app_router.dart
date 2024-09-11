import 'package:go_router/go_router.dart';

import 'package:clean_architecture/src/screens/movies/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home screen',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
