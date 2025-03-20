import 'package:isar/isar.dart';
import 'package:reveria/core/database/journal_db.dart';
import 'package:reveria/core/database/tag_db.dart';

part 'user_db.g.dart';

@Collection()
class UserDb {
  Id userId = Isar.autoIncrement;

  // Basic user indentity stuff
  @Index(unique: true)
  late String username;
  String? displayName;
  String? avatarPath; // Local path to avatar image

  // Timestamps
  late DateTime createdAt;
  late DateTime lastActive;

  // Backlinks/Relations
  @Backlink(to: 'user')
  final journalList = IsarLinks<JournalDb>(); // One user to many journals

  @Backlink(to: 'user')
  final userTags = IsarLinks<TagDb>(); // One user to many tags
}
