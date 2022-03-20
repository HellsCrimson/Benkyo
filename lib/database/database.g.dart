// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class HiraganaHistoryData extends DataClass
    implements Insertable<HiraganaHistoryData> {
  final int id;
  final String symbol;
  final String romaji;
  final String userInput;
  HiraganaHistoryData(
      {required this.id,
      required this.symbol,
      required this.romaji,
      required this.userInput});
  factory HiraganaHistoryData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HiraganaHistoryData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      romaji: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}romaji'])!,
      userInput: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_input'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['romaji'] = Variable<String>(romaji);
    map['user_input'] = Variable<String>(userInput);
    return map;
  }

  HiraganaHistoryCompanion toCompanion(bool nullToAbsent) {
    return HiraganaHistoryCompanion(
      id: Value(id),
      symbol: Value(symbol),
      romaji: Value(romaji),
      userInput: Value(userInput),
    );
  }

  factory HiraganaHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HiraganaHistoryData(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      romaji: serializer.fromJson<String>(json['romaji']),
      userInput: serializer.fromJson<String>(json['userInput']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'romaji': serializer.toJson<String>(romaji),
      'userInput': serializer.toJson<String>(userInput),
    };
  }

  HiraganaHistoryData copyWith(
          {int? id, String? symbol, String? romaji, String? userInput}) =>
      HiraganaHistoryData(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        romaji: romaji ?? this.romaji,
        userInput: userInput ?? this.userInput,
      );
  @override
  String toString() {
    return (StringBuffer('HiraganaHistoryData(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, symbol, romaji, userInput);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HiraganaHistoryData &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.romaji == this.romaji &&
          other.userInput == this.userInput);
}

class HiraganaHistoryCompanion extends UpdateCompanion<HiraganaHistoryData> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> romaji;
  final Value<String> userInput;
  const HiraganaHistoryCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.romaji = const Value.absent(),
    this.userInput = const Value.absent(),
  });
  HiraganaHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String romaji,
    required String userInput,
  })  : symbol = Value(symbol),
        romaji = Value(romaji),
        userInput = Value(userInput);
  static Insertable<HiraganaHistoryData> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? romaji,
    Expression<String>? userInput,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (romaji != null) 'romaji': romaji,
      if (userInput != null) 'user_input': userInput,
    });
  }

  HiraganaHistoryCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? romaji,
      Value<String>? userInput}) {
    return HiraganaHistoryCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      romaji: romaji ?? this.romaji,
      userInput: userInput ?? this.userInput,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (romaji.present) {
      map['romaji'] = Variable<String>(romaji.value);
    }
    if (userInput.present) {
      map['user_input'] = Variable<String>(userInput.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HiraganaHistoryCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }
}

class $HiraganaHistoryTable extends HiraganaHistory
    with TableInfo<$HiraganaHistoryTable, HiraganaHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HiraganaHistoryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _romajiMeta = const VerificationMeta('romaji');
  @override
  late final GeneratedColumn<String?> romaji = GeneratedColumn<String?>(
      'romaji', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userInputMeta = const VerificationMeta('userInput');
  @override
  late final GeneratedColumn<String?> userInput = GeneratedColumn<String?>(
      'user_input', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, symbol, romaji, userInput];
  @override
  String get aliasedName => _alias ?? 'hiragana_history';
  @override
  String get actualTableName => 'hiragana_history';
  @override
  VerificationContext validateIntegrity(
      Insertable<HiraganaHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('romaji')) {
      context.handle(_romajiMeta,
          romaji.isAcceptableOrUnknown(data['romaji']!, _romajiMeta));
    } else if (isInserting) {
      context.missing(_romajiMeta);
    }
    if (data.containsKey('user_input')) {
      context.handle(_userInputMeta,
          userInput.isAcceptableOrUnknown(data['user_input']!, _userInputMeta));
    } else if (isInserting) {
      context.missing(_userInputMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HiraganaHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return HiraganaHistoryData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HiraganaHistoryTable createAlias(String alias) {
    return $HiraganaHistoryTable(attachedDatabase, alias);
  }
}

class KatakanaHistoryData extends DataClass
    implements Insertable<KatakanaHistoryData> {
  final int id;
  final String symbol;
  final String romaji;
  final String userInput;
  KatakanaHistoryData(
      {required this.id,
      required this.symbol,
      required this.romaji,
      required this.userInput});
  factory KatakanaHistoryData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return KatakanaHistoryData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      romaji: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}romaji'])!,
      userInput: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_input'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['romaji'] = Variable<String>(romaji);
    map['user_input'] = Variable<String>(userInput);
    return map;
  }

  KatakanaHistoryCompanion toCompanion(bool nullToAbsent) {
    return KatakanaHistoryCompanion(
      id: Value(id),
      symbol: Value(symbol),
      romaji: Value(romaji),
      userInput: Value(userInput),
    );
  }

  factory KatakanaHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KatakanaHistoryData(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      romaji: serializer.fromJson<String>(json['romaji']),
      userInput: serializer.fromJson<String>(json['userInput']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'romaji': serializer.toJson<String>(romaji),
      'userInput': serializer.toJson<String>(userInput),
    };
  }

  KatakanaHistoryData copyWith(
          {int? id, String? symbol, String? romaji, String? userInput}) =>
      KatakanaHistoryData(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        romaji: romaji ?? this.romaji,
        userInput: userInput ?? this.userInput,
      );
  @override
  String toString() {
    return (StringBuffer('KatakanaHistoryData(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, symbol, romaji, userInput);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KatakanaHistoryData &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.romaji == this.romaji &&
          other.userInput == this.userInput);
}

class KatakanaHistoryCompanion extends UpdateCompanion<KatakanaHistoryData> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> romaji;
  final Value<String> userInput;
  const KatakanaHistoryCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.romaji = const Value.absent(),
    this.userInput = const Value.absent(),
  });
  KatakanaHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String romaji,
    required String userInput,
  })  : symbol = Value(symbol),
        romaji = Value(romaji),
        userInput = Value(userInput);
  static Insertable<KatakanaHistoryData> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? romaji,
    Expression<String>? userInput,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (romaji != null) 'romaji': romaji,
      if (userInput != null) 'user_input': userInput,
    });
  }

  KatakanaHistoryCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? romaji,
      Value<String>? userInput}) {
    return KatakanaHistoryCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      romaji: romaji ?? this.romaji,
      userInput: userInput ?? this.userInput,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (romaji.present) {
      map['romaji'] = Variable<String>(romaji.value);
    }
    if (userInput.present) {
      map['user_input'] = Variable<String>(userInput.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KatakanaHistoryCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }
}

class $KatakanaHistoryTable extends KatakanaHistory
    with TableInfo<$KatakanaHistoryTable, KatakanaHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KatakanaHistoryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _romajiMeta = const VerificationMeta('romaji');
  @override
  late final GeneratedColumn<String?> romaji = GeneratedColumn<String?>(
      'romaji', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userInputMeta = const VerificationMeta('userInput');
  @override
  late final GeneratedColumn<String?> userInput = GeneratedColumn<String?>(
      'user_input', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, symbol, romaji, userInput];
  @override
  String get aliasedName => _alias ?? 'katakana_history';
  @override
  String get actualTableName => 'katakana_history';
  @override
  VerificationContext validateIntegrity(
      Insertable<KatakanaHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('romaji')) {
      context.handle(_romajiMeta,
          romaji.isAcceptableOrUnknown(data['romaji']!, _romajiMeta));
    } else if (isInserting) {
      context.missing(_romajiMeta);
    }
    if (data.containsKey('user_input')) {
      context.handle(_userInputMeta,
          userInput.isAcceptableOrUnknown(data['user_input']!, _userInputMeta));
    } else if (isInserting) {
      context.missing(_userInputMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KatakanaHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return KatakanaHistoryData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $KatakanaHistoryTable createAlias(String alias) {
    return $KatakanaHistoryTable(attachedDatabase, alias);
  }
}

class KanjiHistoryData extends DataClass
    implements Insertable<KanjiHistoryData> {
  final int id;
  final String symbol;
  final String romaji;
  final String userInput;
  KanjiHistoryData(
      {required this.id,
      required this.symbol,
      required this.romaji,
      required this.userInput});
  factory KanjiHistoryData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return KanjiHistoryData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      romaji: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}romaji'])!,
      userInput: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_input'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['romaji'] = Variable<String>(romaji);
    map['user_input'] = Variable<String>(userInput);
    return map;
  }

  KanjiHistoryCompanion toCompanion(bool nullToAbsent) {
    return KanjiHistoryCompanion(
      id: Value(id),
      symbol: Value(symbol),
      romaji: Value(romaji),
      userInput: Value(userInput),
    );
  }

  factory KanjiHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiHistoryData(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      romaji: serializer.fromJson<String>(json['romaji']),
      userInput: serializer.fromJson<String>(json['userInput']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'romaji': serializer.toJson<String>(romaji),
      'userInput': serializer.toJson<String>(userInput),
    };
  }

  KanjiHistoryData copyWith(
          {int? id, String? symbol, String? romaji, String? userInput}) =>
      KanjiHistoryData(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        romaji: romaji ?? this.romaji,
        userInput: userInput ?? this.userInput,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiHistoryData(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, symbol, romaji, userInput);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiHistoryData &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.romaji == this.romaji &&
          other.userInput == this.userInput);
}

class KanjiHistoryCompanion extends UpdateCompanion<KanjiHistoryData> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> romaji;
  final Value<String> userInput;
  const KanjiHistoryCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.romaji = const Value.absent(),
    this.userInput = const Value.absent(),
  });
  KanjiHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String romaji,
    required String userInput,
  })  : symbol = Value(symbol),
        romaji = Value(romaji),
        userInput = Value(userInput);
  static Insertable<KanjiHistoryData> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? romaji,
    Expression<String>? userInput,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (romaji != null) 'romaji': romaji,
      if (userInput != null) 'user_input': userInput,
    });
  }

  KanjiHistoryCompanion copyWith(
      {Value<int>? id,
      Value<String>? symbol,
      Value<String>? romaji,
      Value<String>? userInput}) {
    return KanjiHistoryCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      romaji: romaji ?? this.romaji,
      userInput: userInput ?? this.userInput,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (romaji.present) {
      map['romaji'] = Variable<String>(romaji.value);
    }
    if (userInput.present) {
      map['user_input'] = Variable<String>(userInput.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiHistoryCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('romaji: $romaji, ')
          ..write('userInput: $userInput')
          ..write(')'))
        .toString();
  }
}

class $KanjiHistoryTable extends KanjiHistory
    with TableInfo<$KanjiHistoryTable, KanjiHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiHistoryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _romajiMeta = const VerificationMeta('romaji');
  @override
  late final GeneratedColumn<String?> romaji = GeneratedColumn<String?>(
      'romaji', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userInputMeta = const VerificationMeta('userInput');
  @override
  late final GeneratedColumn<String?> userInput = GeneratedColumn<String?>(
      'user_input', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, symbol, romaji, userInput];
  @override
  String get aliasedName => _alias ?? 'kanji_history';
  @override
  String get actualTableName => 'kanji_history';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('romaji')) {
      context.handle(_romajiMeta,
          romaji.isAcceptableOrUnknown(data['romaji']!, _romajiMeta));
    } else if (isInserting) {
      context.missing(_romajiMeta);
    }
    if (data.containsKey('user_input')) {
      context.handle(_userInputMeta,
          userInput.isAcceptableOrUnknown(data['user_input']!, _userInputMeta));
    } else if (isInserting) {
      context.missing(_userInputMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KanjiHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return KanjiHistoryData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $KanjiHistoryTable createAlias(String alias) {
    return $KanjiHistoryTable(attachedDatabase, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $HiraganaHistoryTable hiraganaHistory =
      $HiraganaHistoryTable(this);
  late final $KatakanaHistoryTable katakanaHistory =
      $KatakanaHistoryTable(this);
  late final $KanjiHistoryTable kanjiHistory = $KanjiHistoryTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [hiraganaHistory, katakanaHistory, kanjiHistory];
}
