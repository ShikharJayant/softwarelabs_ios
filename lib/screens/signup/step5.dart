import 'package:flutter/material.dart';

import '../../models/signup_data.dart';
import '../../widgets/signup_progress.dart';

class Step5 extends StatelessWidget {

  final SignupData data;
  final VoidCallback onNext;

  const Step5({
    super.key,
    required this.data,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            const SignupProgress(
              currentStep: 5,
              totalSteps: 6,
            ),

            const SizedBox(height: 24),

            const Text(
              "Review Information",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text("Name: ${data.fullName}"),
            Text("Email: ${data.email}"),
            Text(
                "Business: ${data.businessName}"),
            Text(
                "City: ${data.city}"),
            Text(
                "Document: ${data.verificationFilePath}"),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: onNext,
                child:
                const Text("Finish"),
              ),
            )
          ],
        ),
      ),
    );
  }
}