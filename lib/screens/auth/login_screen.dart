import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: emailController,

              decoration:
                  const InputDecoration(
                labelText: "Email",
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: passwordController,

              obscureText: true,

              decoration:
                  const InputDecoration(
                labelText: "Password",
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {

                /// Firebase Login
              },

              child:
                  const Text("Login"),
            ),

            TextButton(
              onPressed: () {

                Navigator.pushNamed(
                  context,
                  "/forgot-password",
                );
              },

              child:
                  const Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}