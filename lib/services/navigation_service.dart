import 'package:flutter/material.dart';

class NavigationService {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Future<dynamic>? pushNamed(String route) {
    return navigatorKey.currentState?.pushNamed(route);
  }

  static Future<dynamic>? pushReplacementNamed(String route) {
    return navigatorKey.currentState?.pushReplacementNamed(route);
  }

  static void pop() {
    navigatorKey.currentState?.pop();
  }
}