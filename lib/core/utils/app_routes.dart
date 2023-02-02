import 'package:book_app/features/home/presentation/views/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static GoRouter get getRouter {
    return _router;
  }

  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.rn,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: BookDetailsView.rn,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
