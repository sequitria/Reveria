import 'package:isar/isar.dart';
import 'package:reveria/core/database/journal_db.dart';
import 'package:reveria/core/database/user_db.dart';

part 'tag_db.g.dart';

@Collection()
class TagDb {
  Id tagId = Isar.autoIncrement;
  late int userId;

  @Index(unique: true, replace: true, composite: [CompositeIndex('userId')])
  late String tagName;

  String? tagDescription;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Relationship stuff
  @Backlink(to: 'tags')
  final journals = IsarLinks<JournalDb>();

  final user = IsarLink<UserDb>();
}
