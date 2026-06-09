import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookAuthService {
  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result =
    await FacebookAuth.instance.login();

    if (result.status != LoginStatus.success) {
      return null;
    }

    print(result.accessToken);

    final credential = FacebookAuthProvider.credential(
      result.accessToken!.token,
    );

    return FirebaseAuth.instance
        .signInWithCredential(credential);
  }
}