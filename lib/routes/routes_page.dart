import 'package:get/get.dart';

import '../screen/dashboard_screen.dart';
import '../screen/splash_screen.dart';

class ApplicationPages {
  static const splashScreen = '/SplashScreen';
  // static const loginScreen = '/LoginScreen';
  static const dashboardScreen = '/dashboardScreen';

  static List<GetPage>? getApplicationPages() => [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
    // GetPage(
    //   name: splashScreen,
    //   page: () => const SplashScreen(),
    // ),
    // GetPage(
    //     name: loginScreen,
    //     page: () => const LoginScreen(),
    //     binding: LoginScreenBinding()),
    GetPage(
        name: dashboardScreen,
        page: () =>  DashboardScreen(),
        // bindings: [DashBoardDrawerBinding()]
    ),


  ];
}