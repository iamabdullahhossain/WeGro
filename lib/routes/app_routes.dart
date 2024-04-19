import 'package:get/get.dart';
import 'package:wegro/features/auth/presentation/screens/login_screen/login_screen.dart';
import 'package:wegro/features/auth/presentation/screens/registration_screen/registration_screen.dart';
import 'package:wegro/features/auth/presentation/screens/splash_screen/splash_screen.dart';
import 'package:wegro/features/homepage/presentation/homepage_screen.dart';
import 'package:wegro/routes/routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen, page: () => const SplashScreen()),
        GetPage(
            name: RoutesName.loginScreen,
            page: () => const LoginScreen(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 75)),
        GetPage(
            name: RoutesName.registrationScreen,
            page: () => const RegistrationScreen(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 75)),
        GetPage(
            name: RoutesName.homeScreen,
            page: () => const HomeScreen(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 75)),
      ];
}
