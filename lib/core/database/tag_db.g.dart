// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTagDbCollection on Isar {
  IsarCollection<TagDb> get tagDbs => this.collection();
}

const TagDbSchema = CollectionSchema(
  name: r'TagDb',
  id: 3970439450124105528,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'tagDescription': PropertySchema(
      id: 1,
      name: r'tagDescription',
      type: IsarType.string,
    ),
    r'tagName': PropertySchema(
      id: 2,
      name: r'tagName',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 3,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 4,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _tagDbEstimateSize,
  serialize: _tagDbSerialize,
  deserialize: _tagDbDeserialize,
  deserializeProp: _tagDbDeserializeProp,
  idName: r'tagId',
  indexes: {
    r'tagName_userId': IndexSchema(
      id: -5616535767901153279,
      name: r'tagName_userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'tagName',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'journals': LinkSchema(
      id: 6666890117470756489,
      name: r'journals',
      target: r'JournalDb',
      single: false,
      linkName: r'tags',
    ),
    r'user': LinkSchema(
      id: 974537742297588229,
      name: r'user',
      target: r'UserDb',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _tagDbGetId,
  getLinks: _tagDbGetLinks,
  attach: _tagDbAttach,
  version: '3.1.0+1',
);

int _tagDbEstimateSize(
  TagDb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.tagDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tagName.length * 3;
  return bytesCount;
}

void _tagDbSerialize(
  TagDb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.tagDescription);
  writer.writeString(offsets[2], object.tagName);
  writer.writeDateTime(offsets[3], object.updatedAt);
  writer.writeLong(offsets[4], object.userId);
}

TagDb _tagDbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TagDb();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.tagDescription = reader.readStringOrNull(offsets[1]);
  object.tagId = id;
  object.tagName = reader.readString(offsets[2]);
  object.updatedAt = reader.readDateTime(offsets[3]);
  object.userId = reader.readLong(offsets[4]);
  return object;
}

P _tagDbDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tagDbGetId(TagDb object) {
  return object.tagId;
}

List<IsarLinkBase<dynamic>> _tagDbGetLinks(TagDb object) {
  return [object.journals, object.user];
}

void _tagDbAttach(IsarCollection<dynamic> col, Id id, TagDb object) {
  object.tagId = id;
  object.journals
      .attach(col, col.isar.collection<JournalDb>(), r'journals', id);
  object.user.attach(col, col.isar.collection<UserDb>(), r'user', id);
}

extension TagDbByIndex on IsarCollection<TagDb> {
  Future<TagDb?> getByTagNameUserId(String tagName, int userId) {
    return getByIndex(r'tagName_userId', [tagName, userId]);
  }

  TagDb? getByTagNameUserIdSync(String tagName, int userId) {
    return getByIndexSync(r'tagName_userId', [tagName, userId]);
  }

  Future<bool> deleteByTagNameUserId(String tagName, int userId) {
    return deleteByIndex(r'tagName_userId', [tagName, userId]);
  }

  bool deleteByTagNameUserIdSync(String tagName, int userId) {
    return deleteByIndexSync(r'tagName_userId', [tagName, userId]);
  }

  Future<List<TagDb?>> getAllByTagNameUserId(
      List<String> tagNameValues, List<int> userIdValues) {
    final len = tagNameValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tagNameValues[i], userIdValues[i]]);
    }

    return getAllByIndex(r'tagName_userId', values);
  }

  List<TagDb?> getAllByTagNameUserIdSync(
      List<String> tagNameValues, List<int> userIdValues) {
    final len = tagNameValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tagNameValues[i], userIdValues[i]]);
    }

    return getAllByIndexSync(r'tagName_userId', values);
  }

  Future<int> deleteAllByTagNameUserId(
      List<String> tagNameValues, List<int> userIdValues) {
    final len = tagNameValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tagNameValues[i], userIdValues[i]]);
    }

    return deleteAllByIndex(r'tagName_userId', values);
  }

  int deleteAllByTagNameUserIdSync(
      List<String> tagNameValues, List<int> userIdValues) {
    final len = tagNameValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tagNameValues[i], userIdValues[i]]);
    }

    return deleteAllByIndexSync(r'tagName_userId', values);
  }

  Future<Id> putByTagNameUserId(TagDb object) {
    return putByIndex(r'tagName_userId', object);
  }

  Id putByTagNameUserIdSync(TagDb object, {bool saveLinks = true}) {
    return putByIndexSync(r'tagName_userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTagNameUserId(List<TagDb> objects) {
    return putAllByIndex(r'tagName_userId', objects);
  }

  List<Id> putAllByTagNameUserIdSync(List<TagDb> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tagName_userId', objects, saveLinks: saveLinks);
  }
}

extension TagDbQueryWhereSort on QueryBuilder<TagDb, TagDb, QWhere> {
  QueryBuilder<TagDb, TagDb, QAfterWhere> anyTagId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TagDbQueryWhere on QueryBuilder<TagDb, TagDb, QWhereClause> {
  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagIdEqualTo(Id tagId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: tagId,
        upper: tagId,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagIdNotEqualTo(Id tagId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tagId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tagId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tagId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tagId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagIdGreaterThan(Id tagId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tagId, includeLower: include),
      );
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagIdLessThan(Id tagId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tagId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagIdBetween(
    Id lowerTagId,
    Id upperTagId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerTagId,
        includeLower: includeLower,
        upper: upperTagId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameEqualToAnyUserId(
      String tagName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tagName_userId',
        value: [tagName],
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameNotEqualToAnyUserId(
      String tagName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [],
              upper: [tagName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [],
              upper: [tagName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameUserIdEqualTo(
      String tagName, int userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tagName_userId',
        value: [tagName, userId],
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameEqualToUserIdNotEqualTo(
      String tagName, int userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName],
              upper: [tagName, userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName, userId],
              includeLower: false,
              upper: [tagName],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName, userId],
              includeLower: false,
              upper: [tagName],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tagName_userId',
              lower: [tagName],
              upper: [tagName, userId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameEqualToUserIdGreaterThan(
    String tagName,
    int userId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tagName_userId',
        lower: [tagName, userId],
        includeLower: include,
        upper: [tagName],
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameEqualToUserIdLessThan(
    String tagName,
    int userId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tagName_userId',
        lower: [tagName],
        upper: [tagName, userId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterWhereClause> tagNameEqualToUserIdBetween(
    String tagName,
    int lowerUserId,
    int upperUserId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tagName_userId',
        lower: [tagName, lowerUserId],
        includeLower: includeLower,
        upper: [tagName, upperUserId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TagDbQueryFilter on QueryBuilder<TagDb, TagDb, QFilterCondition> {
  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tagDescription',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tagDescription',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagId',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagId',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagId',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagName',
        value: '',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> tagNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagName',
        value: '',
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> updatedAtBetween(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> userIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> userIdGreaterThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> userIdLessThan(
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

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> userIdBetween(
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

extension TagDbQueryObject on QueryBuilder<TagDb, TagDb, QFilterCondition> {}

extension TagDbQueryLinks on QueryBuilder<TagDb, TagDb, QFilterCondition> {
  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journals(
      FilterQuery<JournalDb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'journals');
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'journals', length, true, length, true);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'journals', 0, true, 0, true);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'journals', 0, false, 999999, true);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'journals', 0, true, length, include);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'journals', length, include, 999999, true);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> journalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'journals', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> user(
      FilterQuery<UserDb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension TagDbQuerySortBy on QueryBuilder<TagDb, TagDb, QSortBy> {
  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByTagDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagDescription', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByTagDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagDescription', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByTagName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByTagNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension TagDbQuerySortThenBy on QueryBuilder<TagDb, TagDb, QSortThenBy> {
  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagDescription', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagDescription', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagId', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagId', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByTagNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<TagDb, TagDb, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension TagDbQueryWhereDistinct on QueryBuilder<TagDb, TagDb, QDistinct> {
  QueryBuilder<TagDb, TagDb, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<TagDb, TagDb, QDistinct> distinctByTagDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TagDb, TagDb, QDistinct> distinctByTagName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TagDb, TagDb, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<TagDb, TagDb, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension TagDbQueryProperty on QueryBuilder<TagDb, TagDb, QQueryProperty> {
  QueryBuilder<TagDb, int, QQueryOperations> tagIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagId');
    });
  }

  QueryBuilder<TagDb, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<TagDb, String?, QQueryOperations> tagDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagDescription');
    });
  }

  QueryBuilder<TagDb, String, QQueryOperations> tagNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagName');
    });
  }

  QueryBuilder<TagDb, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<TagDb, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
