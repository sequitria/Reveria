import 'package:drift/drift.dart';
import 'package:reveria/Models/app_database.dart';
import 'package:reveria/Models/entities/journal.dart';

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

  // Get - get a list of existing journals --> don't have to be null as it will
  //       return an empty list if null
  Future<List<Journal>> getPaginatedJournals(
      int userId, int limit, int offset) async {
    // Order by updatedAt, find by user id, limit and offset for pagination
    final query = _db.select(_db.journalTable)
      ..orderBy([
        (u) => OrderingTerm(expression: u.updatedAt, mode: OrderingMode.desc)
      ])
      ..where((t) => t.userId.equals(userId))
      ..limit(limit, offset: offset);
    // Get the list of journals as tables
    final listOfJournals = await query.get();
    // Convert table list to journal list in one line
    return listOfJournals
        .map((journalTable) => _mapTableToJournal(journalTable))
        .toList();
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
