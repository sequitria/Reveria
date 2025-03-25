// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _googleIdMeta =
      const VerificationMeta('googleId');
  @override
  late final GeneratedColumn<String> googleId = GeneratedColumn<String>(
      'google_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userId, username, googleId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('google_id')) {
      context.handle(_googleIdMeta,
          googleId.isAcceptableOrUnknown(data['google_id']!, _googleIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTableData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      googleId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}google_id']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableData extends DataClass implements Insertable<UserTableData> {
  final int userId;
  final String username;
  final String? googleId;
  final DateTime createdAt;
  const UserTableData(
      {required this.userId,
      required this.username,
      this.googleId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<int>(userId);
    map['username'] = Variable<String>(username);
    if (!nullToAbsent || googleId != null) {
      map['google_id'] = Variable<String>(googleId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      userId: Value(userId),
      username: Value(username),
      googleId: googleId == null && nullToAbsent
          ? const Value.absent()
          : Value(googleId),
      createdAt: Value(createdAt),
    );
  }

  factory UserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      userId: serializer.fromJson<int>(json['userId']),
      username: serializer.fromJson<String>(json['username']),
      googleId: serializer.fromJson<String?>(json['googleId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'username': serializer.toJson<String>(username),
      'googleId': serializer.toJson<String?>(googleId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  UserTableData copyWith(
          {int? userId,
          String? username,
          Value<String?> googleId = const Value.absent(),
          DateTime? createdAt}) =>
      UserTableData(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        googleId: googleId.present ? googleId.value : this.googleId,
        createdAt: createdAt ?? this.createdAt,
      );
  UserTableData copyWithCompanion(UserTableCompanion data) {
    return UserTableData(
      userId: data.userId.present ? data.userId.value : this.userId,
      username: data.username.present ? data.username.value : this.username,
      googleId: data.googleId.present ? data.googleId.value : this.googleId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('googleId: $googleId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, username, googleId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.userId == this.userId &&
          other.username == this.username &&
          other.googleId == this.googleId &&
          other.createdAt == this.createdAt);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<int> userId;
  final Value<String> username;
  final Value<String?> googleId;
  final Value<DateTime> createdAt;
  const UserTableCompanion({
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.googleId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.userId = const Value.absent(),
    required String username,
    this.googleId = const Value.absent(),
    required DateTime createdAt,
  })  : username = Value(username),
        createdAt = Value(createdAt);
  static Insertable<UserTableData> custom({
    Expression<int>? userId,
    Expression<String>? username,
    Expression<String>? googleId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (username != null) 'username': username,
      if (googleId != null) 'google_id': googleId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? userId,
      Value<String>? username,
      Value<String?>? googleId,
      Value<DateTime>? createdAt}) {
    return UserTableCompanion(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      googleId: googleId ?? this.googleId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (googleId.present) {
      map['google_id'] = Variable<String>(googleId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('googleId: $googleId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $JournalTableTable extends JournalTable
    with TableInfo<$JournalTableTable, JournalTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _journalIdMeta =
      const VerificationMeta('journalId');
  @override
  late final GeneratedColumn<int> journalId = GeneratedColumn<int>(
      'journal_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_table (user_id)'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dreamDescriptionMeta =
      const VerificationMeta('dreamDescription');
  @override
  late final GeneratedColumn<String> dreamDescription = GeneratedColumn<String>(
      'dream_description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mapDescriptionMeta =
      const VerificationMeta('mapDescription');
  @override
  late final GeneratedColumn<String> mapDescription = GeneratedColumn<String>(
      'map_description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        journalId,
        userId,
        title,
        dreamDescription,
        mapDescription,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_table';
  @override
  VerificationContext validateIntegrity(Insertable<JournalTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('journal_id')) {
      context.handle(_journalIdMeta,
          journalId.isAcceptableOrUnknown(data['journal_id']!, _journalIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('dream_description')) {
      context.handle(
          _dreamDescriptionMeta,
          dreamDescription.isAcceptableOrUnknown(
              data['dream_description']!, _dreamDescriptionMeta));
    } else if (isInserting) {
      context.missing(_dreamDescriptionMeta);
    }
    if (data.containsKey('map_description')) {
      context.handle(
          _mapDescriptionMeta,
          mapDescription.isAcceptableOrUnknown(
              data['map_description']!, _mapDescriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {journalId};
  @override
  JournalTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalTableData(
      journalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}journal_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      dreamDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}dream_description'])!,
      mapDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}map_description']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $JournalTableTable createAlias(String alias) {
    return $JournalTableTable(attachedDatabase, alias);
  }
}

class JournalTableData extends DataClass
    implements Insertable<JournalTableData> {
  final int journalId;
  final int userId;
  final String? title;
  final String dreamDescription;
  final String? mapDescription;
  final DateTime createdAt;
  final DateTime updatedAt;
  const JournalTableData(
      {required this.journalId,
      required this.userId,
      this.title,
      required this.dreamDescription,
      this.mapDescription,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['journal_id'] = Variable<int>(journalId);
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['dream_description'] = Variable<String>(dreamDescription);
    if (!nullToAbsent || mapDescription != null) {
      map['map_description'] = Variable<String>(mapDescription);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  JournalTableCompanion toCompanion(bool nullToAbsent) {
    return JournalTableCompanion(
      journalId: Value(journalId),
      userId: Value(userId),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      dreamDescription: Value(dreamDescription),
      mapDescription: mapDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(mapDescription),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory JournalTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalTableData(
      journalId: serializer.fromJson<int>(json['journalId']),
      userId: serializer.fromJson<int>(json['userId']),
      title: serializer.fromJson<String?>(json['title']),
      dreamDescription: serializer.fromJson<String>(json['dreamDescription']),
      mapDescription: serializer.fromJson<String?>(json['mapDescription']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'journalId': serializer.toJson<int>(journalId),
      'userId': serializer.toJson<int>(userId),
      'title': serializer.toJson<String?>(title),
      'dreamDescription': serializer.toJson<String>(dreamDescription),
      'mapDescription': serializer.toJson<String?>(mapDescription),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  JournalTableData copyWith(
          {int? journalId,
          int? userId,
          Value<String?> title = const Value.absent(),
          String? dreamDescription,
          Value<String?> mapDescription = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      JournalTableData(
        journalId: journalId ?? this.journalId,
        userId: userId ?? this.userId,
        title: title.present ? title.value : this.title,
        dreamDescription: dreamDescription ?? this.dreamDescription,
        mapDescription:
            mapDescription.present ? mapDescription.value : this.mapDescription,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  JournalTableData copyWithCompanion(JournalTableCompanion data) {
    return JournalTableData(
      journalId: data.journalId.present ? data.journalId.value : this.journalId,
      userId: data.userId.present ? data.userId.value : this.userId,
      title: data.title.present ? data.title.value : this.title,
      dreamDescription: data.dreamDescription.present
          ? data.dreamDescription.value
          : this.dreamDescription,
      mapDescription: data.mapDescription.present
          ? data.mapDescription.value
          : this.mapDescription,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalTableData(')
          ..write('journalId: $journalId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('dreamDescription: $dreamDescription, ')
          ..write('mapDescription: $mapDescription, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(journalId, userId, title, dreamDescription,
      mapDescription, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalTableData &&
          other.journalId == this.journalId &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.dreamDescription == this.dreamDescription &&
          other.mapDescription == this.mapDescription &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class JournalTableCompanion extends UpdateCompanion<JournalTableData> {
  final Value<int> journalId;
  final Value<int> userId;
  final Value<String?> title;
  final Value<String> dreamDescription;
  final Value<String?> mapDescription;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const JournalTableCompanion({
    this.journalId = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.dreamDescription = const Value.absent(),
    this.mapDescription = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  JournalTableCompanion.insert({
    this.journalId = const Value.absent(),
    required int userId,
    this.title = const Value.absent(),
    required String dreamDescription,
    this.mapDescription = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
  })  : userId = Value(userId),
        dreamDescription = Value(dreamDescription),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<JournalTableData> custom({
    Expression<int>? journalId,
    Expression<int>? userId,
    Expression<String>? title,
    Expression<String>? dreamDescription,
    Expression<String>? mapDescription,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (journalId != null) 'journal_id': journalId,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (dreamDescription != null) 'dream_description': dreamDescription,
      if (mapDescription != null) 'map_description': mapDescription,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  JournalTableCompanion copyWith(
      {Value<int>? journalId,
      Value<int>? userId,
      Value<String?>? title,
      Value<String>? dreamDescription,
      Value<String?>? mapDescription,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return JournalTableCompanion(
      journalId: journalId ?? this.journalId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      dreamDescription: dreamDescription ?? this.dreamDescription,
      mapDescription: mapDescription ?? this.mapDescription,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (journalId.present) {
      map['journal_id'] = Variable<int>(journalId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (dreamDescription.present) {
      map['dream_description'] = Variable<String>(dreamDescription.value);
    }
    if (mapDescription.present) {
      map['map_description'] = Variable<String>(mapDescription.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalTableCompanion(')
          ..write('journalId: $journalId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('dreamDescription: $dreamDescription, ')
          ..write('mapDescription: $mapDescription, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TagTableTable extends TagTable
    with TableInfo<$TagTableTable, TagTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_table (user_id)'));
  static const VerificationMeta _tagNameMeta =
      const VerificationMeta('tagName');
  @override
  late final GeneratedColumn<String> tagName = GeneratedColumn<String>(
      'tag_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _tagDescriptionMeta =
      const VerificationMeta('tagDescription');
  @override
  late final GeneratedColumn<String> tagDescription = GeneratedColumn<String>(
      'tag_description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [tagId, userId, tagName, tagDescription, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tag_table';
  @override
  VerificationContext validateIntegrity(Insertable<TagTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('tag_name')) {
      context.handle(_tagNameMeta,
          tagName.isAcceptableOrUnknown(data['tag_name']!, _tagNameMeta));
    } else if (isInserting) {
      context.missing(_tagNameMeta);
    }
    if (data.containsKey('tag_description')) {
      context.handle(
          _tagDescriptionMeta,
          tagDescription.isAcceptableOrUnknown(
              data['tag_description']!, _tagDescriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tagId};
  @override
  TagTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagTableData(
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      tagName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tag_name'])!,
      tagDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tag_description']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $TagTableTable createAlias(String alias) {
    return $TagTableTable(attachedDatabase, alias);
  }
}

class TagTableData extends DataClass implements Insertable<TagTableData> {
  final int tagId;
  final int userId;
  final String tagName;
  final String? tagDescription;
  final DateTime createdAt;
  final DateTime updatedAt;
  const TagTableData(
      {required this.tagId,
      required this.userId,
      required this.tagName,
      this.tagDescription,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tag_id'] = Variable<int>(tagId);
    map['user_id'] = Variable<int>(userId);
    map['tag_name'] = Variable<String>(tagName);
    if (!nullToAbsent || tagDescription != null) {
      map['tag_description'] = Variable<String>(tagDescription);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  TagTableCompanion toCompanion(bool nullToAbsent) {
    return TagTableCompanion(
      tagId: Value(tagId),
      userId: Value(userId),
      tagName: Value(tagName),
      tagDescription: tagDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(tagDescription),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory TagTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagTableData(
      tagId: serializer.fromJson<int>(json['tagId']),
      userId: serializer.fromJson<int>(json['userId']),
      tagName: serializer.fromJson<String>(json['tagName']),
      tagDescription: serializer.fromJson<String?>(json['tagDescription']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tagId': serializer.toJson<int>(tagId),
      'userId': serializer.toJson<int>(userId),
      'tagName': serializer.toJson<String>(tagName),
      'tagDescription': serializer.toJson<String?>(tagDescription),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  TagTableData copyWith(
          {int? tagId,
          int? userId,
          String? tagName,
          Value<String?> tagDescription = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      TagTableData(
        tagId: tagId ?? this.tagId,
        userId: userId ?? this.userId,
        tagName: tagName ?? this.tagName,
        tagDescription:
            tagDescription.present ? tagDescription.value : this.tagDescription,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  TagTableData copyWithCompanion(TagTableCompanion data) {
    return TagTableData(
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
      userId: data.userId.present ? data.userId.value : this.userId,
      tagName: data.tagName.present ? data.tagName.value : this.tagName,
      tagDescription: data.tagDescription.present
          ? data.tagDescription.value
          : this.tagDescription,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagTableData(')
          ..write('tagId: $tagId, ')
          ..write('userId: $userId, ')
          ..write('tagName: $tagName, ')
          ..write('tagDescription: $tagDescription, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(tagId, userId, tagName, tagDescription, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagTableData &&
          other.tagId == this.tagId &&
          other.userId == this.userId &&
          other.tagName == this.tagName &&
          other.tagDescription == this.tagDescription &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class TagTableCompanion extends UpdateCompanion<TagTableData> {
  final Value<int> tagId;
  final Value<int> userId;
  final Value<String> tagName;
  final Value<String?> tagDescription;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const TagTableCompanion({
    this.tagId = const Value.absent(),
    this.userId = const Value.absent(),
    this.tagName = const Value.absent(),
    this.tagDescription = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  TagTableCompanion.insert({
    this.tagId = const Value.absent(),
    required int userId,
    required String tagName,
    this.tagDescription = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
  })  : userId = Value(userId),
        tagName = Value(tagName),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<TagTableData> custom({
    Expression<int>? tagId,
    Expression<int>? userId,
    Expression<String>? tagName,
    Expression<String>? tagDescription,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (tagId != null) 'tag_id': tagId,
      if (userId != null) 'user_id': userId,
      if (tagName != null) 'tag_name': tagName,
      if (tagDescription != null) 'tag_description': tagDescription,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  TagTableCompanion copyWith(
      {Value<int>? tagId,
      Value<int>? userId,
      Value<String>? tagName,
      Value<String?>? tagDescription,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return TagTableCompanion(
      tagId: tagId ?? this.tagId,
      userId: userId ?? this.userId,
      tagName: tagName ?? this.tagName,
      tagDescription: tagDescription ?? this.tagDescription,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (tagName.present) {
      map['tag_name'] = Variable<String>(tagName.value);
    }
    if (tagDescription.present) {
      map['tag_description'] = Variable<String>(tagDescription.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagTableCompanion(')
          ..write('tagId: $tagId, ')
          ..write('userId: $userId, ')
          ..write('tagName: $tagName, ')
          ..write('tagDescription: $tagDescription, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $JournalTagTableTable extends JournalTagTable
    with TableInfo<$JournalTagTableTable, JournalTagTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalTagTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _journalIdMeta =
      const VerificationMeta('journalId');
  @override
  late final GeneratedColumn<int> journalId = GeneratedColumn<int>(
      'journal_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES journal_table (journal_id)'));
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tag_table (tag_id)'));
  @override
  List<GeneratedColumn> get $columns => [journalId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_tag_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<JournalTagTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('journal_id')) {
      context.handle(_journalIdMeta,
          journalId.isAcceptableOrUnknown(data['journal_id']!, _journalIdMeta));
    } else if (isInserting) {
      context.missing(_journalIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {journalId, tagId};
  @override
  JournalTagTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalTagTableData(
      journalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}journal_id'])!,
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
    );
  }

  @override
  $JournalTagTableTable createAlias(String alias) {
    return $JournalTagTableTable(attachedDatabase, alias);
  }
}

class JournalTagTableData extends DataClass
    implements Insertable<JournalTagTableData> {
  final int journalId;
  final int tagId;
  const JournalTagTableData({required this.journalId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['journal_id'] = Variable<int>(journalId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  JournalTagTableCompanion toCompanion(bool nullToAbsent) {
    return JournalTagTableCompanion(
      journalId: Value(journalId),
      tagId: Value(tagId),
    );
  }

  factory JournalTagTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalTagTableData(
      journalId: serializer.fromJson<int>(json['journalId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'journalId': serializer.toJson<int>(journalId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  JournalTagTableData copyWith({int? journalId, int? tagId}) =>
      JournalTagTableData(
        journalId: journalId ?? this.journalId,
        tagId: tagId ?? this.tagId,
      );
  JournalTagTableData copyWithCompanion(JournalTagTableCompanion data) {
    return JournalTagTableData(
      journalId: data.journalId.present ? data.journalId.value : this.journalId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalTagTableData(')
          ..write('journalId: $journalId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(journalId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalTagTableData &&
          other.journalId == this.journalId &&
          other.tagId == this.tagId);
}

class JournalTagTableCompanion extends UpdateCompanion<JournalTagTableData> {
  final Value<int> journalId;
  final Value<int> tagId;
  final Value<int> rowid;
  const JournalTagTableCompanion({
    this.journalId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JournalTagTableCompanion.insert({
    required int journalId,
    required int tagId,
    this.rowid = const Value.absent(),
  })  : journalId = Value(journalId),
        tagId = Value(tagId);
  static Insertable<JournalTagTableData> custom({
    Expression<int>? journalId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (journalId != null) 'journal_id': journalId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JournalTagTableCompanion copyWith(
      {Value<int>? journalId, Value<int>? tagId, Value<int>? rowid}) {
    return JournalTagTableCompanion(
      journalId: journalId ?? this.journalId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (journalId.present) {
      map['journal_id'] = Variable<int>(journalId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalTagTableCompanion(')
          ..write('journalId: $journalId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $JournalTableTable journalTable = $JournalTableTable(this);
  late final $TagTableTable tagTable = $TagTableTable(this);
  late final $JournalTagTableTable journalTagTable =
      $JournalTagTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, journalTable, tagTable, journalTagTable];
}

typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  Value<int> userId,
  required String username,
  Value<String?> googleId,
  required DateTime createdAt,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<int> userId,
  Value<String> username,
  Value<String?> googleId,
  Value<DateTime> createdAt,
});

final class $$UserTableTableReferences
    extends BaseReferences<_$AppDatabase, $UserTableTable, UserTableData> {
  $$UserTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$JournalTableTable, List<JournalTableData>>
      _journalTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.journalTable,
              aliasName: $_aliasNameGenerator(
                  db.userTable.userId, db.journalTable.userId));

  $$JournalTableTableProcessedTableManager get journalTableRefs {
    final manager = $$JournalTableTableTableManager($_db, $_db.journalTable)
        .filter(
            (f) => f.userId.userId.sqlEquals($_itemColumn<int>('user_id')!));

    final cache = $_typedResult.readTableOrNull(_journalTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TagTableTable, List<TagTableData>>
      _tagTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.tagTable,
          aliasName:
              $_aliasNameGenerator(db.userTable.userId, db.tagTable.userId));

  $$TagTableTableProcessedTableManager get tagTableRefs {
    final manager = $$TagTableTableTableManager($_db, $_db.tagTable).filter(
        (f) => f.userId.userId.sqlEquals($_itemColumn<int>('user_id')!));

    final cache = $_typedResult.readTableOrNull(_tagTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get googleId => $composableBuilder(
      column: $table.googleId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> journalTableRefs(
      Expression<bool> Function($$JournalTableTableFilterComposer f) f) {
    final $$JournalTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.journalTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTableTableFilterComposer(
              $db: $db,
              $table: $db.journalTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> tagTableRefs(
      Expression<bool> Function($$TagTableTableFilterComposer f) f) {
    final $$TagTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.tagTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagTableTableFilterComposer(
              $db: $db,
              $table: $db.tagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get googleId => $composableBuilder(
      column: $table.googleId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$UserTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get googleId =>
      $composableBuilder(column: $table.googleId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> journalTableRefs<T extends Object>(
      Expression<T> Function($$JournalTableTableAnnotationComposer a) f) {
    final $$JournalTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.journalTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTableTableAnnotationComposer(
              $db: $db,
              $table: $db.journalTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> tagTableRefs<T extends Object>(
      Expression<T> Function($$TagTableTableAnnotationComposer a) f) {
    final $$TagTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.tagTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagTableTableAnnotationComposer(
              $db: $db,
              $table: $db.tagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserTableData,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserTableData, $$UserTableTableReferences),
    UserTableData,
    PrefetchHooks Function({bool journalTableRefs, bool tagTableRefs})> {
  $$UserTableTableTableManager(_$AppDatabase db, $UserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String?> googleId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              UserTableCompanion(
            userId: userId,
            username: username,
            googleId: googleId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            required String username,
            Value<String?> googleId = const Value.absent(),
            required DateTime createdAt,
          }) =>
              UserTableCompanion.insert(
            userId: userId,
            username: username,
            googleId: googleId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {journalTableRefs = false, tagTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (journalTableRefs) db.journalTable,
                if (tagTableRefs) db.tagTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (journalTableRefs)
                    await $_getPrefetchedData<UserTableData, $UserTableTable,
                            JournalTableData>(
                        currentTable: table,
                        referencedTable: $$UserTableTableReferences
                            ._journalTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .journalTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.userId == item.userId),
                        typedResults: items),
                  if (tagTableRefs)
                    await $_getPrefetchedData<UserTableData, $UserTableTable,
                            TagTableData>(
                        currentTable: table,
                        referencedTable:
                            $$UserTableTableReferences._tagTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .tagTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.userId == item.userId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserTableData,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserTableData, $$UserTableTableReferences),
    UserTableData,
    PrefetchHooks Function({bool journalTableRefs, bool tagTableRefs})>;
typedef $$JournalTableTableCreateCompanionBuilder = JournalTableCompanion
    Function({
  Value<int> journalId,
  required int userId,
  Value<String?> title,
  required String dreamDescription,
  Value<String?> mapDescription,
  required DateTime createdAt,
  required DateTime updatedAt,
});
typedef $$JournalTableTableUpdateCompanionBuilder = JournalTableCompanion
    Function({
  Value<int> journalId,
  Value<int> userId,
  Value<String?> title,
  Value<String> dreamDescription,
  Value<String?> mapDescription,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

final class $$JournalTableTableReferences extends BaseReferences<_$AppDatabase,
    $JournalTableTable, JournalTableData> {
  $$JournalTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _userIdTable(_$AppDatabase db) =>
      db.userTable.createAlias(
          $_aliasNameGenerator(db.journalTable.userId, db.userTable.userId));

  $$UserTableTableProcessedTableManager get userId {
    final $_column = $_itemColumn<int>('user_id')!;

    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.userId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$JournalTagTableTable, List<JournalTagTableData>>
      _journalTagTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.journalTagTable,
              aliasName: $_aliasNameGenerator(
                  db.journalTable.journalId, db.journalTagTable.journalId));

  $$JournalTagTableTableProcessedTableManager get journalTagTableRefs {
    final manager = $$JournalTagTableTableTableManager(
            $_db, $_db.journalTagTable)
        .filter((f) =>
            f.journalId.journalId.sqlEquals($_itemColumn<int>('journal_id')!));

    final cache =
        $_typedResult.readTableOrNull(_journalTagTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$JournalTableTableFilterComposer
    extends Composer<_$AppDatabase, $JournalTableTable> {
  $$JournalTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get journalId => $composableBuilder(
      column: $table.journalId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dreamDescription => $composableBuilder(
      column: $table.dreamDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mapDescription => $composableBuilder(
      column: $table.mapDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$UserTableTableFilterComposer get userId {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableFilterComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> journalTagTableRefs(
      Expression<bool> Function($$JournalTagTableTableFilterComposer f) f) {
    final $$JournalTagTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.journalId,
        referencedTable: $db.journalTagTable,
        getReferencedColumn: (t) => t.journalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTagTableTableFilterComposer(
              $db: $db,
              $table: $db.journalTagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$JournalTableTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalTableTable> {
  $$JournalTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get journalId => $composableBuilder(
      column: $table.journalId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dreamDescription => $composableBuilder(
      column: $table.dreamDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mapDescription => $composableBuilder(
      column: $table.mapDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$UserTableTableOrderingComposer get userId {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableOrderingComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$JournalTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalTableTable> {
  $$JournalTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get journalId =>
      $composableBuilder(column: $table.journalId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get dreamDescription => $composableBuilder(
      column: $table.dreamDescription, builder: (column) => column);

  GeneratedColumn<String> get mapDescription => $composableBuilder(
      column: $table.mapDescription, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$UserTableTableAnnotationComposer get userId {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> journalTagTableRefs<T extends Object>(
      Expression<T> Function($$JournalTagTableTableAnnotationComposer a) f) {
    final $$JournalTagTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.journalId,
        referencedTable: $db.journalTagTable,
        getReferencedColumn: (t) => t.journalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTagTableTableAnnotationComposer(
              $db: $db,
              $table: $db.journalTagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$JournalTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $JournalTableTable,
    JournalTableData,
    $$JournalTableTableFilterComposer,
    $$JournalTableTableOrderingComposer,
    $$JournalTableTableAnnotationComposer,
    $$JournalTableTableCreateCompanionBuilder,
    $$JournalTableTableUpdateCompanionBuilder,
    (JournalTableData, $$JournalTableTableReferences),
    JournalTableData,
    PrefetchHooks Function({bool userId, bool journalTagTableRefs})> {
  $$JournalTableTableTableManager(_$AppDatabase db, $JournalTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> journalId = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String> dreamDescription = const Value.absent(),
            Value<String?> mapDescription = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              JournalTableCompanion(
            journalId: journalId,
            userId: userId,
            title: title,
            dreamDescription: dreamDescription,
            mapDescription: mapDescription,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> journalId = const Value.absent(),
            required int userId,
            Value<String?> title = const Value.absent(),
            required String dreamDescription,
            Value<String?> mapDescription = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
          }) =>
              JournalTableCompanion.insert(
            journalId: journalId,
            userId: userId,
            title: title,
            dreamDescription: dreamDescription,
            mapDescription: mapDescription,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$JournalTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {userId = false, journalTagTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (journalTagTableRefs) db.journalTagTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$JournalTableTableReferences._userIdTable(db),
                    referencedColumn:
                        $$JournalTableTableReferences._userIdTable(db).userId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (journalTagTableRefs)
                    await $_getPrefetchedData<JournalTableData,
                            $JournalTableTable, JournalTagTableData>(
                        currentTable: table,
                        referencedTable: $$JournalTableTableReferences
                            ._journalTagTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$JournalTableTableReferences(db, table, p0)
                                .journalTagTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.journalId == item.journalId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$JournalTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $JournalTableTable,
    JournalTableData,
    $$JournalTableTableFilterComposer,
    $$JournalTableTableOrderingComposer,
    $$JournalTableTableAnnotationComposer,
    $$JournalTableTableCreateCompanionBuilder,
    $$JournalTableTableUpdateCompanionBuilder,
    (JournalTableData, $$JournalTableTableReferences),
    JournalTableData,
    PrefetchHooks Function({bool userId, bool journalTagTableRefs})>;
typedef $$TagTableTableCreateCompanionBuilder = TagTableCompanion Function({
  Value<int> tagId,
  required int userId,
  required String tagName,
  Value<String?> tagDescription,
  required DateTime createdAt,
  required DateTime updatedAt,
});
typedef $$TagTableTableUpdateCompanionBuilder = TagTableCompanion Function({
  Value<int> tagId,
  Value<int> userId,
  Value<String> tagName,
  Value<String?> tagDescription,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

final class $$TagTableTableReferences
    extends BaseReferences<_$AppDatabase, $TagTableTable, TagTableData> {
  $$TagTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _userIdTable(_$AppDatabase db) =>
      db.userTable.createAlias(
          $_aliasNameGenerator(db.tagTable.userId, db.userTable.userId));

  $$UserTableTableProcessedTableManager get userId {
    final $_column = $_itemColumn<int>('user_id')!;

    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.userId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$JournalTagTableTable, List<JournalTagTableData>>
      _journalTagTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.journalTagTable,
              aliasName: $_aliasNameGenerator(
                  db.tagTable.tagId, db.journalTagTable.tagId));

  $$JournalTagTableTableProcessedTableManager get journalTagTableRefs {
    final manager = $$JournalTagTableTableTableManager(
            $_db, $_db.journalTagTable)
        .filter((f) => f.tagId.tagId.sqlEquals($_itemColumn<int>('tag_id')!));

    final cache =
        $_typedResult.readTableOrNull(_journalTagTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TagTableTableFilterComposer
    extends Composer<_$AppDatabase, $TagTableTable> {
  $$TagTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get tagId => $composableBuilder(
      column: $table.tagId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagName => $composableBuilder(
      column: $table.tagName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagDescription => $composableBuilder(
      column: $table.tagDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$UserTableTableFilterComposer get userId {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableFilterComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> journalTagTableRefs(
      Expression<bool> Function($$JournalTagTableTableFilterComposer f) f) {
    final $$JournalTagTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.journalTagTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTagTableTableFilterComposer(
              $db: $db,
              $table: $db.journalTagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TagTableTable> {
  $$TagTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get tagId => $composableBuilder(
      column: $table.tagId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagName => $composableBuilder(
      column: $table.tagName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagDescription => $composableBuilder(
      column: $table.tagDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$UserTableTableOrderingComposer get userId {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableOrderingComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TagTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagTableTable> {
  $$TagTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get tagId =>
      $composableBuilder(column: $table.tagId, builder: (column) => column);

  GeneratedColumn<String> get tagName =>
      $composableBuilder(column: $table.tagName, builder: (column) => column);

  GeneratedColumn<String> get tagDescription => $composableBuilder(
      column: $table.tagDescription, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$UserTableTableAnnotationComposer get userId {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> journalTagTableRefs<T extends Object>(
      Expression<T> Function($$JournalTagTableTableAnnotationComposer a) f) {
    final $$JournalTagTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.journalTagTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTagTableTableAnnotationComposer(
              $db: $db,
              $table: $db.journalTagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TagTableTable,
    TagTableData,
    $$TagTableTableFilterComposer,
    $$TagTableTableOrderingComposer,
    $$TagTableTableAnnotationComposer,
    $$TagTableTableCreateCompanionBuilder,
    $$TagTableTableUpdateCompanionBuilder,
    (TagTableData, $$TagTableTableReferences),
    TagTableData,
    PrefetchHooks Function({bool userId, bool journalTagTableRefs})> {
  $$TagTableTableTableManager(_$AppDatabase db, $TagTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> tagId = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> tagName = const Value.absent(),
            Value<String?> tagDescription = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              TagTableCompanion(
            tagId: tagId,
            userId: userId,
            tagName: tagName,
            tagDescription: tagDescription,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> tagId = const Value.absent(),
            required int userId,
            required String tagName,
            Value<String?> tagDescription = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
          }) =>
              TagTableCompanion.insert(
            tagId: tagId,
            userId: userId,
            tagName: tagName,
            tagDescription: tagDescription,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TagTableTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {userId = false, journalTagTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (journalTagTableRefs) db.journalTagTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable: $$TagTableTableReferences._userIdTable(db),
                    referencedColumn:
                        $$TagTableTableReferences._userIdTable(db).userId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (journalTagTableRefs)
                    await $_getPrefetchedData<TagTableData, $TagTableTable, JournalTagTableData>(
                        currentTable: table,
                        referencedTable: $$TagTableTableReferences
                            ._journalTagTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TagTableTableReferences(db, table, p0)
                                .journalTagTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.tagId == item.tagId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TagTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TagTableTable,
    TagTableData,
    $$TagTableTableFilterComposer,
    $$TagTableTableOrderingComposer,
    $$TagTableTableAnnotationComposer,
    $$TagTableTableCreateCompanionBuilder,
    $$TagTableTableUpdateCompanionBuilder,
    (TagTableData, $$TagTableTableReferences),
    TagTableData,
    PrefetchHooks Function({bool userId, bool journalTagTableRefs})>;
typedef $$JournalTagTableTableCreateCompanionBuilder = JournalTagTableCompanion
    Function({
  required int journalId,
  required int tagId,
  Value<int> rowid,
});
typedef $$JournalTagTableTableUpdateCompanionBuilder = JournalTagTableCompanion
    Function({
  Value<int> journalId,
  Value<int> tagId,
  Value<int> rowid,
});

final class $$JournalTagTableTableReferences extends BaseReferences<
    _$AppDatabase, $JournalTagTableTable, JournalTagTableData> {
  $$JournalTagTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $JournalTableTable _journalIdTable(_$AppDatabase db) =>
      db.journalTable.createAlias($_aliasNameGenerator(
          db.journalTagTable.journalId, db.journalTable.journalId));

  $$JournalTableTableProcessedTableManager get journalId {
    final $_column = $_itemColumn<int>('journal_id')!;

    final manager = $$JournalTableTableTableManager($_db, $_db.journalTable)
        .filter((f) => f.journalId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_journalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TagTableTable _tagIdTable(_$AppDatabase db) =>
      db.tagTable.createAlias(
          $_aliasNameGenerator(db.journalTagTable.tagId, db.tagTable.tagId));

  $$TagTableTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<int>('tag_id')!;

    final manager = $$TagTableTableTableManager($_db, $_db.tagTable)
        .filter((f) => f.tagId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$JournalTagTableTableFilterComposer
    extends Composer<_$AppDatabase, $JournalTagTableTable> {
  $$JournalTagTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$JournalTableTableFilterComposer get journalId {
    final $$JournalTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.journalId,
        referencedTable: $db.journalTable,
        getReferencedColumn: (t) => t.journalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTableTableFilterComposer(
              $db: $db,
              $table: $db.journalTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagTableTableFilterComposer get tagId {
    final $$TagTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tagTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagTableTableFilterComposer(
              $db: $db,
              $table: $db.tagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$JournalTagTableTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalTagTableTable> {
  $$JournalTagTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$JournalTableTableOrderingComposer get journalId {
    final $$JournalTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.journalId,
        referencedTable: $db.journalTable,
        getReferencedColumn: (t) => t.journalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTableTableOrderingComposer(
              $db: $db,
              $table: $db.journalTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagTableTableOrderingComposer get tagId {
    final $$TagTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tagTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagTableTableOrderingComposer(
              $db: $db,
              $table: $db.tagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$JournalTagTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalTagTableTable> {
  $$JournalTagTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$JournalTableTableAnnotationComposer get journalId {
    final $$JournalTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.journalId,
        referencedTable: $db.journalTable,
        getReferencedColumn: (t) => t.journalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$JournalTableTableAnnotationComposer(
              $db: $db,
              $table: $db.journalTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagTableTableAnnotationComposer get tagId {
    final $$TagTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tagTable,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagTableTableAnnotationComposer(
              $db: $db,
              $table: $db.tagTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$JournalTagTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $JournalTagTableTable,
    JournalTagTableData,
    $$JournalTagTableTableFilterComposer,
    $$JournalTagTableTableOrderingComposer,
    $$JournalTagTableTableAnnotationComposer,
    $$JournalTagTableTableCreateCompanionBuilder,
    $$JournalTagTableTableUpdateCompanionBuilder,
    (JournalTagTableData, $$JournalTagTableTableReferences),
    JournalTagTableData,
    PrefetchHooks Function({bool journalId, bool tagId})> {
  $$JournalTagTableTableTableManager(
      _$AppDatabase db, $JournalTagTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalTagTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalTagTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalTagTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> journalId = const Value.absent(),
            Value<int> tagId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              JournalTagTableCompanion(
            journalId: journalId,
            tagId: tagId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int journalId,
            required int tagId,
            Value<int> rowid = const Value.absent(),
          }) =>
              JournalTagTableCompanion.insert(
            journalId: journalId,
            tagId: tagId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$JournalTagTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({journalId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (journalId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.journalId,
                    referencedTable:
                        $$JournalTagTableTableReferences._journalIdTable(db),
                    referencedColumn: $$JournalTagTableTableReferences
                        ._journalIdTable(db)
                        .journalId,
                  ) as T;
                }
                if (tagId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.tagId,
                    referencedTable:
                        $$JournalTagTableTableReferences._tagIdTable(db),
                    referencedColumn:
                        $$JournalTagTableTableReferences._tagIdTable(db).tagId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$JournalTagTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $JournalTagTableTable,
    JournalTagTableData,
    $$JournalTagTableTableFilterComposer,
    $$JournalTagTableTableOrderingComposer,
    $$JournalTagTableTableAnnotationComposer,
    $$JournalTagTableTableCreateCompanionBuilder,
    $$JournalTagTableTableUpdateCompanionBuilder,
    (JournalTagTableData, $$JournalTagTableTableReferences),
    JournalTagTableData,
    PrefetchHooks Function({bool journalId, bool tagId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$JournalTableTableTableManager get journalTable =>
      $$JournalTableTableTableManager(_db, _db.journalTable);
  $$TagTableTableTableManager get tagTable =>
      $$TagTableTableTableManager(_db, _db.tagTable);
  $$JournalTagTableTableTableManager get journalTagTable =>
      $$JournalTagTableTableTableManager(_db, _db.journalTagTable);
}
