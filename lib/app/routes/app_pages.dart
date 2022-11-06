import 'package:get/get.dart';

import '../modules/alphabets/bindings/alphabets_binding.dart';
import '../modules/alphabets/views/alphabets_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/puzzle/bindings/puzzle_binding.dart';
import '../modules/puzzle/views/puzzle_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ALPHABETS,
      page: () => const AlphabetsView(),
      binding: AlphabetsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PUZZLE,
      page: () => const PuzzleView(),
      binding: PuzzleBinding(),
    ),
  ];
}
