import 'package:flutter/material.dart';

import '../../models/signup_data.dart';
import '../../widgets/signup_form_field.dart';
import '../../widgets/signup_progress.dart';

class Step2 extends StatefulWidget {
  final SignupData data;
  final VoidCallback onNext;

  const Step2({
    super.key,
    required this.data,
    required this.onNext,
  });

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {

  late TextEditingController businessName;
  late TextEditingController informalName;
  late TextEditingController address;
  late TextEditingController city;
  late TextEditingController stateField;
  late TextEditingController zip;

  @override
  void initState() {
    super.initState();

    businessName = TextEditingController();
    informalName = TextEditingController();
    address = TextEditingController();
    city = TextEditingController();
    stateField = TextEditingController();
    zip = TextEditingController();
  }

  void next() {
    widget.data.businessName =
        businessName.text;

    widget.data.informalName =
        informalName.text;

    widget.data.address =
        address.text;

    widget.data.city =
        city.text;

    widget.data.state =
        stateField.text;

    widget.data.zipCode =
        zip.text;

    widget.onNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            children: [

              const SignupProgress(
                currentStep: 2,
                totalSteps: 6,
              ),

              const SizedBox(height: 24),

              SignupFormField(
                controller: businessName,
                label: "Business Name",
              ),

              SignupFormField(
                controller: informalName,
                label: "Informal Name",
              ),

              SignupFormField(
                controller: address,
                label: "Street Address",
              ),

              SignupFormField(
                controller: city,
                label: "City",
              ),

              SignupFormField(
                controller: stateField,
                label: "State",
              ),

              SignupFormField(
                controller: zip,
                label: "Zip Code",
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: next,
                  child:
                  const Text("Continue"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}