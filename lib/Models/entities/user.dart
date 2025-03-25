class User {
  final int userId;
  final String username;
  final String googleId;
  final DateTime createdAt;

  final List<int>? journalList;
  final List<int>? userTags;

  User({
    required this.userId,
    required this.googleId,
    required this.username,
    required this.createdAt,
    this.journalList,
    this.userTags,
  });
}
