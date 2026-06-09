import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {

  final FirebaseAuth _auth =
      FirebaseAuth.instance;

  Future<UserCredential> login(
    String email,
    String password,
  ) {

    return _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  Future<void> resetPassword(
    String email,
  ) {

    return _auth.sendPasswordResetEmail(
      email: email,
    );
  }

  Future<void> logout() {
    return _auth.signOut();
  }
}