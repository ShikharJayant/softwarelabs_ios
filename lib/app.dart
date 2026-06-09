import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';
import 'services/navigation_service.dart';

class SoftwareLabsApp extends StatelessWidget {
  const SoftwareLabsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoftwareLabs',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey,
      theme: AppTheme.lightTheme,
      initialRoute: "/auth",

      // initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}