import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class Step6 extends StatelessWidget {

  const Step6({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.check_circle,
                size: 100,
              ),

              const SizedBox(height: 20),

              const Text(
                "Registration Complete",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {

                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(
                      builder: (_) =>
                      const HomeScreen(),
                    ),

                        (route) => false,
                  );
                },

                child:
                const Text("Go Home"),
              )
            ],
          ),
        ),
      ),
    );
  }
}