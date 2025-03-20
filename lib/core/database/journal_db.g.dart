// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJournalDbCollection on Isar {
  IsarCollection<JournalDb> get journalDbs => this.collection();
}

const JournalDbSchema = CollectionSchema(
  name: r'JournalDb',
  id: -145633998804509050,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dreamDescription': PropertySchema(
      id: 1,
      name: r'dreamDescription',
      type: IsarType.string,
    ),
    r'mapDescription': PropertySchema(
      id: 2,
      name: r'mapDescription',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 3,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 4,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _journalDbEstimateSize,
  serialize: _journalDbSerialize,
  deserialize: _journalDbDeserialize,
  deserializeProp: _journalDbDeserializeProp,
  idName: r'journalId',
  indexes: {},
  links: {
    r'tags': LinkSchema(
      id: -4549331146419221040,
      name: r'tags',
      target: r'TagDb',
      single: false,
    ),
    r'user': LinkSchema(
      id: 8456226971389795407,
      name: r'user',
      target: r'UserDb',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _journalDbGetId,
  getLinks: _journalDbGetLinks,
  attach: _journalDbAttach,
  version: '3.1.0+1',
);

int _journalDbEstimateSize(
  JournalDb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dreamDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mapDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _journalDbSerialize(
  JournalDb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.dreamDescription);
  writer.writeString(offsets[2], object.mapDescription);
  writer.writeString(offsets[3], object.title);
  writer.writeDateTime(offsets[4], object.updatedAt);
  writer.writeLong(offsets[5], object.userId);
}

JournalDb _journalDbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JournalDb();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.dreamDescription = reader.readStringOrNull(offsets[1]);
  object.journalId = id;
  object.mapDescription = reader.readStringOrNull(offsets[2]);
  object.title = reader.readString(offsets[3]);
  object.updatedAt = reader.readDateTime(offsets[4]);
  object.userId = reader.readLong(offsets[5]);
  return object;
}

P _journalDbDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _journalDbGetId(JournalDb object) {
  return object.journalId;
}

List<IsarLinkBase<dynamic>> _journalDbGetLinks(JournalDb object) {
  return [object.tags, object.user];
}

void _journalDbAttach(IsarCollection<dynamic> col, Id id, JournalDb object) {
  object.journalId = id;
  object.tags.attach(col, col.isar.collection<TagDb>(), r'tags', id);
  object.user.attach(col, col.isar.collection<UserDb>(), r'user', id);
}

extension JournalDbQueryWhereSort
    on QueryBuilder<JournalDb, JournalDb, QWhere> {
  QueryBuilder<JournalDb, JournalDb, QAfterWhere> anyJournalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JournalDbQueryWhere
    on QueryBuilder<JournalDb, JournalDb, QWhereClause> {
  QueryBuilder<JournalDb, JournalDb, QAfterWhereClause> journalIdEqualTo(
      Id journalId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: journalId,
        upper: journalId,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterWhereClause> journalIdNotEqualTo(
      Id journalId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: journalId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: journalId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: journalId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: journalId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterWhereClause> journalIdGreaterThan(
      Id journalId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: journalId, includeLower: include),
      );
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterWhereClause> journalIdLessThan(
      Id journalId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: journalId, includeUpper: include),
      );
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterWhereClause> journalIdBetween(
    Id lowerJournalId,
    Id upperJournalId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerJournalId,
        includeLower: includeLower,
        upper: upperJournalId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JournalDbQueryFilter
    on QueryBuilder<JournalDb, JournalDb, QFilterCondition> {
  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dreamDescription',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dreamDescription',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dreamDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dreamDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dreamDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dreamDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      dreamDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dreamDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> journalIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'journalId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      journalIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'journalId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> journalIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'journalId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> journalIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'journalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mapDescription',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mapDescription',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mapDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mapDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mapDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mapDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      mapDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mapDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JournalDbQueryObject
    on QueryBuilder<JournalDb, JournalDb, QFilterCondition> {}

extension JournalDbQueryLinks
    on QueryBuilder<JournalDb, JournalDb, QFilterCondition> {
  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tags(
      FilterQuery<TagDb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tags');
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, true, length, true);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, 0, true);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, false, 999999, true);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, length, include);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, include, 999999, true);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tags', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> user(
      FilterQuery<UserDb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension JournalDbQuerySortBy on QueryBuilder<JournalDb, JournalDb, QSortBy> {
  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByDreamDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dreamDescription', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy>
      sortByDreamDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dreamDescription', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByMapDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mapDescription', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByMapDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mapDescription', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension JournalDbQuerySortThenBy
    on QueryBuilder<JournalDb, JournalDb, QSortThenBy> {
  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByDreamDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dreamDescription', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy>
      thenByDreamDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dreamDescription', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByJournalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'journalId', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByJournalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'journalId', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByMapDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mapDescription', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByMapDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mapDescription', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension JournalDbQueryWhereDistinct
    on QueryBuilder<JournalDb, JournalDb, QDistinct> {
  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByDreamDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dreamDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByMapDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mapDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<JournalDb, JournalDb, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension JournalDbQueryProperty
    on QueryBuilder<JournalDb, JournalDb, QQueryProperty> {
  QueryBuilder<JournalDb, int, QQueryOperations> journalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'journalId');
    });
  }

  QueryBuilder<JournalDb, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<JournalDb, String?, QQueryOperations>
      dreamDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dreamDescription');
    });
  }

  QueryBuilder<JournalDb, String?, QQueryOperations> mapDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mapDescription');
    });
  }

  QueryBuilder<JournalDb, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<JournalDb, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<JournalDb, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
