
class Tag {
  final int tagId;
  final int userId; // Used as link to user
  final String tagName;

  final String? tagDescription;
  final DateTime createdAt;
  final DateTime updatedAt;

  Tag({
    required this.tagId,
    required this.userId,
    required this.tagName,
    required this.tagDescription,
    required this.createdAt,
    required this.updatedAt,
  });
}
