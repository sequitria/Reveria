class Journal {
  final int journalId;
  final int userId; // Used as the link to the user

  final DateTime createdAt;
  final DateTime updatedAt;

  String? title;
  final String dreamDescription;
  final String? mapDescription;

  final List<String>? tagList;

  Journal({
    required this.journalId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.dreamDescription,
    this.mapDescription,
    this.tagList,
  });
}
