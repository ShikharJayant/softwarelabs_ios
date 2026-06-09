import 'package:flutter/material.dart';

import 'onboarding_page.dart';
import '../../widgets/onboarding_card.dart';
import '../../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState
    extends State<OnboardingScreen> {

  final PageController controller =
      PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Column(

          children: [

            Align(
              alignment: Alignment.topRight,

              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                  context,
                  "/login",
                );
                  /// Iteration 3
                  /// Navigate Login Screen
                },

                child: const Text("Skip"),
              ),
            ),

            Expanded(
              child: PageView.builder(

                controller: controller,

                itemCount: onboardingPages.length,

                onPageChanged: (index) {

                  setState(() {
                    currentPage = index;
                  });
                },

                itemBuilder: (context, index) {

                  return OnboardingCard(
                    page: onboardingPages[index],
                  );
                },
              ),
            ),

            PageIndicator(
              currentIndex: currentPage,
              total: onboardingPages.length,
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(20),

              child: SizedBox(
                width: double.infinity,

                child: ElevatedButton(

                  onPressed: () {

                    if (currentPage <
                        onboardingPages.length - 1) {

                      controller.nextPage(
                        duration: const Duration(
                            milliseconds: 300),
                        curve: Curves.easeInOut,
                      );

                    } else {

                      Navigator.pushReplacementNamed(
                        context,
                        "/login",
                      );
                      

                      /// Iteration 3
                      /// Navigate Login Screen
                    }
                  },

                  child: Text(
                    currentPage ==
                            onboardingPages.length - 1
                        ? "Get Started"
                        : "Next",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}