import 'package:flutter/material.dart';
import '../screens/onboarding/onboarding_data.dart';

class OnboardingCard extends StatelessWidget {

  final OnboardingData page;

  const OnboardingCard({
    super.key,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Icon(
            Icons.phone_android,
            size: 160,
          ),

          const SizedBox(height: 40),

          Text(
            page.title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            page.subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}