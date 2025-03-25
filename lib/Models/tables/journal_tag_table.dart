import 'package:drift/drift.dart';
import 'package:reveria/Models/tables/journal_table.dart';
import 'package:reveria/Models/tables/tag_table.dart';

class JournalTagTable extends Table {
  // Composite primary key of both referenced ID
  IntColumn get journalId => integer().references(JournalTable, #journalId)();
  IntColumn get tagId => integer().references(TagTable, #tagId)();

  @override
  Set<Column> get primaryKey => {journalId, tagId};
}
