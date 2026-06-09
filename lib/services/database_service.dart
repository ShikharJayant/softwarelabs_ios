import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final FirebaseFirestore firestore =
      FirebaseFirestore.instance;

  Future<void> saveUser(
      String uid,
      Map<String, dynamic> data,
      ) async {

    await firestore
        .collection('users')
        .doc(uid)
        .set(data);
  }

  Future<DocumentSnapshot> getUser(
      String uid,
      ) async {

    return firestore
        .collection('users')
        .doc(uid)
        .get();
  }
}
