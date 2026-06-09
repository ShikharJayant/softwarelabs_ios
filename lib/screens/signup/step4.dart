import 'package:flutter/material.dart';

import '../../models/signup_data.dart';
import '../../widgets/signup_progress.dart';

class Step4 extends StatefulWidget {
  final SignupData data;
  final VoidCallback onNext;

  const Step4({
    super.key,
    required this.data,
    required this.onNext,
  });

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {

  final List<String> days = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  String startTime = "8:00 AM";
  String endTime = "5:00 PM";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SignupProgress(
              currentStep: 4,
              totalSteps: 6,
            ),

            const SizedBox(height: 24),

            const Text(
              "Business Hours",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 8,
              children: days.map((day) {

                final selected =
                widget.data.selectedDays
                    .contains(day);

                return FilterChip(
                  label: Text(day),

                  selected: selected,

                  onSelected: (_) {

                    setState(() {

                      if (selected) {
                        widget.data.selectedDays
                            .remove(day);
                      } else {
                        widget.data.selectedDays
                            .add(day);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            DropdownButton<String>(
              value: startTime,

              items: const [
                DropdownMenuItem(
                  value: "8:00 AM",
                  child: Text("8:00 AM"),
                ),
                DropdownMenuItem(
                  value: "9:00 AM",
                  child: Text("9:00 AM"),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  startTime = value!;
                });
              },
            ),

            DropdownButton<String>(
              value: endTime,

              items: const [
                DropdownMenuItem(
                  value: "5:00 PM",
                  child: Text("5:00 PM"),
                ),
                DropdownMenuItem(
                  value: "6:00 PM",
                  child: Text("6:00 PM"),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  endTime = value!;
                });
              },
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {

                  widget.data.startTime =
                      startTime;

                  widget.data.endTime =
                      endTime;

                  widget.onNext();
                },

                child:
                const Text("Continue"),
              ),
            )
          ],
        ),
      ),
    );
  }
}