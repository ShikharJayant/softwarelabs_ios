import '../models/user_model.dart';
import '../services/database_service.dart';

class UserRepository {

  final DatabaseService _database =
  DatabaseService();

  Future<UserModel?> getUser(
      String uid,
      ) async {

    final snapshot =
    await _database.getUser(uid);

    if (!snapshot.exists) {
      return null;
    }

    return UserModel.fromMap(
      snapshot.data()
      as Map<String, dynamic>,
    );
  }

  Future<void> saveUser(
      UserModel user,
      ) async {

    await _database.saveUser(
      user.uid,
      user.toMap(),
    );
  }
}