import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/calculation/presentation/view/calculator.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'calculator',
        builder: (context, state) => const CalculatorView(),
      ),
    ],
  );
}
