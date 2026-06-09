import 'package:flutter/material.dart';

import '../../models/signup_data.dart';

import 'step1.dart';
import 'step2.dart';
import 'step3.dart';
import 'step4.dart';
import 'step5.dart';
import 'step6.dart';

class SignupFlow extends StatefulWidget {
  const SignupFlow({super.key});

  @override
  State<SignupFlow> createState() =>
      _SignupFlowState();
}

class _SignupFlowState
    extends State<SignupFlow> {

  final SignupData data =
  SignupData();

  int currentIndex = 0;

  void nextStep() {
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final screens = [

      Step1(
        data: data,
        onNext: nextStep,
      ),

      Step2(
        data: data,
        onNext: nextStep,
      ),

      Step3(
        data: data,
        onNext: nextStep,
      ),

      Step4(
        data: data,
        onNext: nextStep,
      ),

      Step5(
        data: data,
        onNext: nextStep,
      ),

      const Step6(),
    ];

    return screens[currentIndex];
  }
}