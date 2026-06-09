import 'package:flutter/material.dart';

import '../../models/signup_data.dart';
import '../../widgets/signup_form_field.dart';
import '../../widgets/signup_progress.dart';

class Step1 extends StatefulWidget {
  final SignupData data;
  final VoidCallback onNext;

  const Step1({
    super.key,
    required this.data,
    required this.onNext,
  });

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    nameController =
        TextEditingController(text: widget.data.fullName);

    emailController =
        TextEditingController(text: widget.data.email);

    phoneController =
        TextEditingController(text: widget.data.phoneNumber);

    passwordController =
        TextEditingController(text: widget.data.password);
  }

  void next() {
    widget.data.fullName = nameController.text;
    widget.data.email = emailController.text;
    widget.data.phoneNumber = phoneController.text;
    widget.data.password = passwordController.text;

    widget.onNext();
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
              currentStep: 1,
              totalSteps: 6,
            ),
            const SizedBox(height: 24),

            SignupFormField(
              controller: nameController,
              label: "Full Name",
            ),

            SignupFormField(
              controller: emailController,
              label: "Email",
              keyboardType:
              TextInputType.emailAddress,
            ),

            SignupFormField(
              controller: phoneController,
              label: "Phone Number",
              keyboardType:
              TextInputType.phone,
            ),

            SignupFormField(
              controller: passwordController,
              label: "Password",
              obscureText: true,
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: next,
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}