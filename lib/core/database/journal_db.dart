import 'package:isar/isar.dart';
import 'package:reveria/core/database/tag_db.dart';
import 'package:reveria/core/database/user_db.dart';

part 'journal_db.g.dart';

@Collection()
class JournalDb {
  Id journalId = Isar.autoIncrement;
  late int userId;

  late DateTime createdAt;
  late DateTime updatedAt;

  // User Input
  late String title;
  String? dreamDescription;
  String? mapDescription;

  // Relationships
  final tags = IsarLinks<TagDb>();

  final user = IsarLink<UserDb>();
}
