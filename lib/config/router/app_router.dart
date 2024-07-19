import 'package:client/presentation/screens/counter_functions_screen.dart';
import 'package:client/presentation/screens/counter_screen.dart';
import 'package:client/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/counter-functions",
      builder: (context, state) => const CounterFunctionsScreen(),
    ),
    GoRoute(
      path: "/counter",
      builder: (context, state) => const CounterScreen(),
    )
  ]
);
