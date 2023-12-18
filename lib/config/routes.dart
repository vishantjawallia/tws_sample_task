import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/dashboard/dashboard_view.dart';
import '../views/splash/splash_view.dart';

class Routes {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(name: DashboardView.routeName, page: () => DashboardView()),
    GetPage(name: SplashView.routeName, page: () => const SplashView()),
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    DashboardView.routeName: (p0) => DashboardView(),
    SplashView.routeName: (p0) => const SplashView(),
  };
}
