import 'dart:async';
import 'package:flutter/material.dart';
import '../../constants/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
    const Duration(seconds: 2),
    () {

        Navigator.pushReplacementNamed(
          context,
          "/onboarding",
        );
   },
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.mobile_friendly,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              AppStrings.splashTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}