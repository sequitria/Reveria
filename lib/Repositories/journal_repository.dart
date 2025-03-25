import 'package:drift/drift.dart';
import 'package:reveria/Models/app_database.dart';
import 'package:reveria/Models/database_provider.dart';
import 'package:reveria/Models/entities/journal.dart';

class JournalRepository {
  final AppDatabase _db;

  JournalRepository(this._db);

  Future<int> updateJournalDetail({required Journal journal}) async {
    return await _db.into(_db.journalTable).insert(JournalTableCompanion.insert(
          journalId: Value(journal.journalId),
          userId: journal.userId,
          title: Value(journal.title),
          dreamDescription: journal.dreamDescription,
          mapDescription: Value(journal.mapDescription),
          createdAt: journal.createdAt,
          updatedAt: journal.updatedAt,
        ));
  }
}
