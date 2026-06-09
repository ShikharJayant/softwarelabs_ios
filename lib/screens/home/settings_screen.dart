import 'package:flutter/material.dart';

import '../../services/firebase_auth_service.dart';

class SettingsScreen
    extends StatelessWidget {

  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: ElevatedButton(
        onPressed: () async {

          await FirebaseAuthService()
              .logout();

          if (!context.mounted) {
            return;
          }

          Navigator.pushNamedAndRemoveUntil(
            context,
            "/login",
                (route) => false,
          );
        },

        child: const Text(
          "Logout",
        ),
      ),
    );
  }
}