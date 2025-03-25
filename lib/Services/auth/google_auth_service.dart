import 'package:drift/drift.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reveria/Models/app_database.dart';
import 'package:reveria/Models/entities/user.dart';

class GoogleAuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final AppDatabase _db;

  GoogleAuthService(this._db);

  // Sign in
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      // Check if the user already exists in DB using select
      final query = _db.select(_db.userTable)
        ..where((u) => u.googleId.equals(googleUser.id));

      final existingUser = await query.getSingleOrNull();

      if (existingUser != null) {
        // return existing user
        return User(
            userId: existingUser.userId,
            username: existingUser.username,
            googleId: existingUser.googleId!,
            createdAt: existingUser.createdAt);
      } else {
        // Create a new instance of User
        final userId = await _db.into(_db.userTable).insert(UserTableCompanion(
            username: Value(googleUser.displayName ?? googleUser.email),
            googleId: Value(googleUser.id),
            createdAt: Value(DateTime.now())));

        return User(
            userId: userId,
            googleId: googleUser.id,
            username: googleUser.displayName ?? googleUser.email,
            createdAt: DateTime.now());
      }
    } on Exception catch (e) {
      print('could not add user: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
