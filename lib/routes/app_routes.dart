import 'package:flutter/material.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/auth/auth_wrapper.dart';

class AppRoutes {
  static const String splash = "/";
  static const auth = "/auth";

  static const onboarding = "/onboarding";

  static const login = "/login";

  static const forgotPassword =  "/forgot-password";
   

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    auth: (context) => const AuthWrapper(),

    onboarding: (context) => const OnboardingScreen(),

    login: (context) => const LoginScreen(),
    
    forgotPassword: (context) => const ForgotPasswordScreen(),
    
      
  };

  
}