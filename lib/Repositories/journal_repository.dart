import 'package:drift/drift.dart';
import 'package:reveria/Models/app_database.dart';
import 'package:reveria/Models/entities/journal.dart';
import 'package:reveria/Models/tables/journal_table.dart';

class JournalRepository {
  final AppDatabase _db;

  JournalRepository(this._db);

  // Set - add/create a journal
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

  // Get - read an existing journal
  Future<Journal?> openJournal(int uid, int jid) async {
    // Create query
    final query = _db.select(_db.journalTable)
      ..where((t) => t.userId.equals(uid) & t.journalId.equals(jid));
    // Utilise query
    final existingJournal = await query.getSingleOrNull();
    // If not null give journal, else give null
    return (existingJournal != null)
        ? _mapTableToJournal(existingJournal)
        : null;
  }

  // Map a JournalTable => Journal
  Journal _mapTableToJournal(JournalTableData table) {
    return Journal(
        journalId: table.journalId,
        userId: table.userId,
        createdAt: table.createdAt,
        updatedAt: table.updatedAt,
        title: table.title ?? '',
        dreamDescription: table.dreamDescription,
        mapDescription: table.mapDescription ?? '');
  }
}
