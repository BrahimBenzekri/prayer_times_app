import 'package:go_router/go_router.dart';
import 'package:salati/presentation/pages/city_search/city_search_page.dart';
import 'package:salati/presentation/pages/home/home_page.dart';
import 'package:salati/presentation/pages/location_edit/location_edit_page.dart';
import 'package:salati/presentation/pages/location_onboarding/location_onboarding_page.dart';
import 'package:salati/presentation/pages/splash/splash_page.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashPage()),
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const LocationOnboardingPage(),
    ),
    GoRoute(
      path: '/edit-location',
      builder: (context, state) => const LocationEditPage(),
    ),
    GoRoute(
      path: '/city-search',
      builder: (context, state) => const CitySearchPage(),
    ),
  ],
);
