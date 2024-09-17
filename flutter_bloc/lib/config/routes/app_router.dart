import 'package:go_router/go_router.dart';
import '../../src/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
