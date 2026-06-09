import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? account =
    await googleSignIn.signIn();

    if (account == null) return null;

    final GoogleSignInAuthentication auth =
    await account.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );

    return await _auth.signInWithCredential(
      credential,
    );
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
  }
}