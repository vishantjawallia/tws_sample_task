// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tws_sample_task/config/config.dart';
import 'package:tws_sample_task/config/routes.dart';
import 'package:tws_sample_task/theme/theme.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'package:flutter/material.dart';

import 'core/services/navigator_service.dart';
import 'views/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  await LocatorInjector.setupLocator();
  runApp(
    MultiProvider(
      providers: ProviderInjector.providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return GetMaterialApp(
        key: _key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        title: APP_NAME,
        theme: CustomTheme.light,
        routes: Routes.routes,
        initialRoute: SplashView.routeName,
      );
    } else {
      return GetMaterialApp(
        key: _key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        title: APP_NAME,
        theme: CustomTheme.light,
        getPages: Routes.getRoutes,
        navigatorKey: locator<NavigatorService>().navigatorKey,
        home: const SplashView(),
      );
    }
  }
}
