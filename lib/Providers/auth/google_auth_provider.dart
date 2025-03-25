import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reveria/Models/database_provider.dart';
import 'package:reveria/services/auth/google_auth_service.dart';

final googleAuthProvider = Provider<GoogleAuthService>((ref) {
  final db = ref.watch(databaseProvider);
  return GoogleAuthService(db);
});

