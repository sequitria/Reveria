import 'package:drift/drift.dart';

class UserTable extends Table {
  IntColumn get userId => integer().autoIncrement()();
  TextColumn get username => text().unique()();
  TextColumn get googleId => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}
