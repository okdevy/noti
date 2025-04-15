// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNotificationDataCollection on Isar {
  IsarCollection<NotificationData> get notificationDatas => this.collection();
}

const NotificationDataSchema = CollectionSchema(
  name: r'NotificationData',
  id: -7036474379157347655,
  properties: {
    r'color': PropertySchema(
      id: 0,
      name: r'color',
      type: IsarType.byte,
      enumMap: _NotificationDatacolorEnumValueMap,
    ),
    r'icon': PropertySchema(
      id: 1,
      name: r'icon',
      type: IsarType.byte,
      enumMap: _NotificationDataiconEnumValueMap,
    ),
    r'message': PropertySchema(
      id: 2,
      name: r'message',
      type: IsarType.string,
    ),
    r'time': PropertySchema(
      id: 3,
      name: r'time',
      type: IsarType.dateTime,
    ),
    r'type': PropertySchema(
      id: 4,
      name: r'type',
      type: IsarType.byte,
      enumMap: _NotificationDatatypeEnumValueMap,
    )
  },
  estimateSize: _notificationDataEstimateSize,
  serialize: _notificationDataSerialize,
  deserialize: _notificationDataDeserialize,
  deserializeProp: _notificationDataDeserializeProp,
  idName: r'id',
  indexes: {
    r'time': IndexSchema(
      id: -2250472054110640942,
      name: r'time',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'time',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _notificationDataGetId,
  getLinks: _notificationDataGetLinks,
  attach: _notificationDataAttach,
  version: '3.1.0+1',
);

int _notificationDataEstimateSize(
  NotificationData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.message;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _notificationDataSerialize(
  NotificationData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.color.index);
  writer.writeByte(offsets[1], object.icon.index);
  writer.writeString(offsets[2], object.message);
  writer.writeDateTime(offsets[3], object.time);
  writer.writeByte(offsets[4], object.type.index);
}

NotificationData _notificationDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NotificationData();
  object.color =
      _NotificationDatacolorValueEnumMap[reader.readByteOrNull(offsets[0])] ??
          ColorTypeEnum.none;
  object.icon =
      _NotificationDataiconValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          IconTypeEnum.none;
  object.id = id;
  object.message = reader.readStringOrNull(offsets[2]);
  object.time = reader.readDateTimeOrNull(offsets[3]);
  object.type =
      _NotificationDatatypeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
          NotificationTypeEnum.oneTime;
  return object;
}

P _notificationDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_NotificationDatacolorValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ColorTypeEnum.none) as P;
    case 1:
      return (_NotificationDataiconValueEnumMap[
              reader.readByteOrNull(offset)] ??
          IconTypeEnum.none) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (_NotificationDatatypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          NotificationTypeEnum.oneTime) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _NotificationDatacolorEnumValueMap = {
  'none': 0,
  'noneBackground': 1,
  'peachRed': 2,
  'lemonYellow': 3,
  'lightPurple': 4,
  'lightPink': 5,
};
const _NotificationDatacolorValueEnumMap = {
  0: ColorTypeEnum.none,
  1: ColorTypeEnum.noneBackground,
  2: ColorTypeEnum.peachRed,
  3: ColorTypeEnum.lemonYellow,
  4: ColorTypeEnum.lightPurple,
  5: ColorTypeEnum.lightPink,
};
const _NotificationDataiconEnumValueMap = {
  'none': 0,
  'business': 1,
  'list': 2,
  'personCheck': 3,
  'notification': 4,
  'error': 5,
};
const _NotificationDataiconValueEnumMap = {
  0: IconTypeEnum.none,
  1: IconTypeEnum.business,
  2: IconTypeEnum.list,
  3: IconTypeEnum.personCheck,
  4: IconTypeEnum.notification,
  5: IconTypeEnum.error,
};
const _NotificationDatatypeEnumValueMap = {
  'oneTime': 0,
  'recurring': 1,
};
const _NotificationDatatypeValueEnumMap = {
  0: NotificationTypeEnum.oneTime,
  1: NotificationTypeEnum.recurring,
};

Id _notificationDataGetId(NotificationData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _notificationDataGetLinks(NotificationData object) {
  return [];
}

void _notificationDataAttach(
    IsarCollection<dynamic> col, Id id, NotificationData object) {
  object.id = id;
}

extension NotificationDataQueryWhereSort
    on QueryBuilder<NotificationData, NotificationData, QWhere> {
  QueryBuilder<NotificationData, NotificationData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhere> anyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'time'),
      );
    });
  }
}

extension NotificationDataQueryWhere
    on QueryBuilder<NotificationData, NotificationData, QWhereClause> {
  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'time',
        value: [null],
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeEqualTo(DateTime? time) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'time',
        value: [time],
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeNotEqualTo(DateTime? time) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeGreaterThan(
    DateTime? time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [time],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeLessThan(
    DateTime? time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [],
        upper: [time],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterWhereClause>
      timeBetween(
    DateTime? lowerTime,
    DateTime? upperTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [lowerTime],
        includeLower: includeLower,
        upper: [upperTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotificationDataQueryFilter
    on QueryBuilder<NotificationData, NotificationData, QFilterCondition> {
  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      colorEqualTo(ColorTypeEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      colorGreaterThan(
    ColorTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      colorLessThan(
    ColorTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      colorBetween(
    ColorTypeEnum lower,
    ColorTypeEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      iconEqualTo(IconTypeEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      iconGreaterThan(
    IconTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      iconLessThan(
    IconTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      iconBetween(
    IconTypeEnum lower,
    IconTypeEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      timeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      typeEqualTo(NotificationTypeEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      typeGreaterThan(
    NotificationTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      typeLessThan(
    NotificationTypeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterFilterCondition>
      typeBetween(
    NotificationTypeEnum lower,
    NotificationTypeEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotificationDataQueryObject
    on QueryBuilder<NotificationData, NotificationData, QFilterCondition> {}

extension NotificationDataQueryLinks
    on QueryBuilder<NotificationData, NotificationData, QFilterCondition> {}

extension NotificationDataQuerySortBy
    on QueryBuilder<NotificationData, NotificationData, QSortBy> {
  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension NotificationDataQuerySortThenBy
    on QueryBuilder<NotificationData, NotificationData, QSortThenBy> {
  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension NotificationDataQueryWhereDistinct
    on QueryBuilder<NotificationData, NotificationData, QDistinct> {
  QueryBuilder<NotificationData, NotificationData, QDistinct>
      distinctByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color');
    });
  }

  QueryBuilder<NotificationData, NotificationData, QDistinct> distinctByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon');
    });
  }

  QueryBuilder<NotificationData, NotificationData, QDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationData, NotificationData, QDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }

  QueryBuilder<NotificationData, NotificationData, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension NotificationDataQueryProperty
    on QueryBuilder<NotificationData, NotificationData, QQueryProperty> {
  QueryBuilder<NotificationData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NotificationData, ColorTypeEnum, QQueryOperations>
      colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<NotificationData, IconTypeEnum, QQueryOperations>
      iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<NotificationData, String?, QQueryOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<NotificationData, DateTime?, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<NotificationData, NotificationTypeEnum, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
