import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reveria/Models/database_provider.dart';
import 'package:reveria/repositories/journal_repository.dart';

final journalRepositoryProvider = Provider<JournalRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return JournalRepository(db);
});
