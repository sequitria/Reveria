import 'package:drift/drift.dart';
import 'package:reveria/Models/tables/user_table.dart';


class TagTable extends Table {
  IntColumn get tagId => integer().autoIncrement()();
  IntColumn get userId => integer().references(UserTable, #userId)();
  TextColumn get tagName => text().unique()();
  TextColumn get tagDescription => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
