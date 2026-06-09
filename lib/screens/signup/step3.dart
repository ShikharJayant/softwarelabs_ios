import 'package:flutter/material.dart';
import '../../models/signup_data.dart';
import '../../widgets/signup_progress.dart';

class Step3 extends StatefulWidget {
  final SignupData data;
  final VoidCallback onNext;

  const Step3({
    super.key,
    required this.data,
    required this.onNext,
  });

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {

  void pickDocument() async {

    // TODO:
    // FilePicker.platform.pickFiles()

    setState(() {
      widget.data.verificationFilePath =
      "sample_document.pdf";
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SignupProgress(
              currentStep: 3,
              totalSteps: 6,
            ),

            const SizedBox(height: 30),

            const Text(
              "Attach proof of registration",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            OutlinedButton(
              onPressed: pickDocument,
              child: const Text(
                "Choose File",
              ),
            ),

            const SizedBox(height: 20),

            Text(
              widget.data.verificationFilePath ??
                  "No file selected",
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                widget.data.verificationFilePath ==
                    null
                    ? null
                    : widget.onNext,
                child:
                const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}