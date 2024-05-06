import 'package:flutter_getx_mvvm_mvc_pattern/resources/routes/routes_name.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
