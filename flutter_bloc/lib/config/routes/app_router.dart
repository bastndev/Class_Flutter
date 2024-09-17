import 'package:go_router/go_router.dart';
import '../../src/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/cubit',
      builder: (context, state) => const CubitCounterScreen(),
    ),
    GoRoute(
      path: '/bloc',
      builder: (context, state) => const BlocCounterScreen(),
    ),
  ],
);
