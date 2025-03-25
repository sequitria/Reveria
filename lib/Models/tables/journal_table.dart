import 'package:drift/drift.dart';
import 'package:reveria/Models/tables/user_table.dart';

class JournalTable extends Table {

  IntColumn get journalId => integer().autoIncrement()();
  IntColumn get userId => integer().references(UserTable, #userId)();
  TextColumn get title => text().nullable()();
  TextColumn get dreamDescription => text()();
  TextColumn get mapDescription => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
