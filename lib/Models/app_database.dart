// lib/core/database/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

// Import table definitions
import 'tables/user_table.dart';
import 'tables/journal_table.dart';
import 'tables/tag_table.dart';
import 'tables/journal_tag_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  UserTable, 
  JournalTable, 
  TagTable, 
  JournalTagTable
])
class AppDatabase extends _$AppDatabase {
  // Private constructor for singleton pattern
  AppDatabase._() : super(_openConnection());
  
  // Singleton instance
  static final AppDatabase _instance = AppDatabase._();
  
  // Factory constructor to access the singleton
  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;
  
  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) => m.createAll(),
    onUpgrade: (m, from, to) async {
      // Define upgrade strategy when needed
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'reveria_db.sqlite'));
    return NativeDatabase(file);
  });
}