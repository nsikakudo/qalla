// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $EventsTable extends Events with TableInfo<$EventsTable, Event> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _image128UrlMeta = const VerificationMeta(
    'image128Url',
  );
  @override
  late final GeneratedColumn<String> image128Url = GeneratedColumn<String>(
    'image128_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tradesMeta = const VerificationMeta('trades');
  @override
  late final GeneratedColumn<int> trades = GeneratedColumn<int>(
    'trades',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalVolumeMeta = const VerificationMeta(
    'totalVolume',
  );
  @override
  late final GeneratedColumn<double> totalVolume = GeneratedColumn<double>(
    'total_volume',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _endsAtMeta = const VerificationMeta('endsAt');
  @override
  late final GeneratedColumn<DateTime> endsAt = GeneratedColumn<DateTime>(
    'ends_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    imageUrl,
    image128Url,
    type,
    trades,
    totalVolume,
    endsAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(
    Insertable<Event> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('image128_url')) {
      context.handle(
        _image128UrlMeta,
        image128Url.isAcceptableOrUnknown(
          data['image128_url']!,
          _image128UrlMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_image128UrlMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('trades')) {
      context.handle(
        _tradesMeta,
        trades.isAcceptableOrUnknown(data['trades']!, _tradesMeta),
      );
    } else if (isInserting) {
      context.missing(_tradesMeta);
    }
    if (data.containsKey('total_volume')) {
      context.handle(
        _totalVolumeMeta,
        totalVolume.isAcceptableOrUnknown(
          data['total_volume']!,
          _totalVolumeMeta,
        ),
      );
    }
    if (data.containsKey('ends_at')) {
      context.handle(
        _endsAtMeta,
        endsAt.isAcceptableOrUnknown(data['ends_at']!, _endsAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Event(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      image128Url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image128_url'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      trades: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trades'],
      )!,
      totalVolume: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_volume'],
      )!,
      endsAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ends_at'],
      ),
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class Event extends DataClass implements Insertable<Event> {
  final String id;
  final String title;
  final String imageUrl;
  final String image128Url;
  final String type;
  final int trades;
  final double totalVolume;
  final DateTime? endsAt;
  const Event({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.image128Url,
    required this.type,
    required this.trades,
    required this.totalVolume,
    this.endsAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['image_url'] = Variable<String>(imageUrl);
    map['image128_url'] = Variable<String>(image128Url);
    map['type'] = Variable<String>(type);
    map['trades'] = Variable<int>(trades);
    map['total_volume'] = Variable<double>(totalVolume);
    if (!nullToAbsent || endsAt != null) {
      map['ends_at'] = Variable<DateTime>(endsAt);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      title: Value(title),
      imageUrl: Value(imageUrl),
      image128Url: Value(image128Url),
      type: Value(type),
      trades: Value(trades),
      totalVolume: Value(totalVolume),
      endsAt: endsAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endsAt),
    );
  }

  factory Event.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      image128Url: serializer.fromJson<String>(json['image128Url']),
      type: serializer.fromJson<String>(json['type']),
      trades: serializer.fromJson<int>(json['trades']),
      totalVolume: serializer.fromJson<double>(json['totalVolume']),
      endsAt: serializer.fromJson<DateTime?>(json['endsAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'image128Url': serializer.toJson<String>(image128Url),
      'type': serializer.toJson<String>(type),
      'trades': serializer.toJson<int>(trades),
      'totalVolume': serializer.toJson<double>(totalVolume),
      'endsAt': serializer.toJson<DateTime?>(endsAt),
    };
  }

  Event copyWith({
    String? id,
    String? title,
    String? imageUrl,
    String? image128Url,
    String? type,
    int? trades,
    double? totalVolume,
    Value<DateTime?> endsAt = const Value.absent(),
  }) => Event(
    id: id ?? this.id,
    title: title ?? this.title,
    imageUrl: imageUrl ?? this.imageUrl,
    image128Url: image128Url ?? this.image128Url,
    type: type ?? this.type,
    trades: trades ?? this.trades,
    totalVolume: totalVolume ?? this.totalVolume,
    endsAt: endsAt.present ? endsAt.value : this.endsAt,
  );
  Event copyWithCompanion(EventsCompanion data) {
    return Event(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      image128Url: data.image128Url.present
          ? data.image128Url.value
          : this.image128Url,
      type: data.type.present ? data.type.value : this.type,
      trades: data.trades.present ? data.trades.value : this.trades,
      totalVolume: data.totalVolume.present
          ? data.totalVolume.value
          : this.totalVolume,
      endsAt: data.endsAt.present ? data.endsAt.value : this.endsAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('image128Url: $image128Url, ')
          ..write('type: $type, ')
          ..write('trades: $trades, ')
          ..write('totalVolume: $totalVolume, ')
          ..write('endsAt: $endsAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    imageUrl,
    image128Url,
    type,
    trades,
    totalVolume,
    endsAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.title == this.title &&
          other.imageUrl == this.imageUrl &&
          other.image128Url == this.image128Url &&
          other.type == this.type &&
          other.trades == this.trades &&
          other.totalVolume == this.totalVolume &&
          other.endsAt == this.endsAt);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> imageUrl;
  final Value<String> image128Url;
  final Value<String> type;
  final Value<int> trades;
  final Value<double> totalVolume;
  final Value<DateTime?> endsAt;
  final Value<int> rowid;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.image128Url = const Value.absent(),
    this.type = const Value.absent(),
    this.trades = const Value.absent(),
    this.totalVolume = const Value.absent(),
    this.endsAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventsCompanion.insert({
    required String id,
    required String title,
    required String imageUrl,
    required String image128Url,
    required String type,
    required int trades,
    this.totalVolume = const Value.absent(),
    this.endsAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       imageUrl = Value(imageUrl),
       image128Url = Value(image128Url),
       type = Value(type),
       trades = Value(trades);
  static Insertable<Event> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? imageUrl,
    Expression<String>? image128Url,
    Expression<String>? type,
    Expression<int>? trades,
    Expression<double>? totalVolume,
    Expression<DateTime>? endsAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (imageUrl != null) 'image_url': imageUrl,
      if (image128Url != null) 'image128_url': image128Url,
      if (type != null) 'type': type,
      if (trades != null) 'trades': trades,
      if (totalVolume != null) 'total_volume': totalVolume,
      if (endsAt != null) 'ends_at': endsAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? imageUrl,
    Value<String>? image128Url,
    Value<String>? type,
    Value<int>? trades,
    Value<double>? totalVolume,
    Value<DateTime?>? endsAt,
    Value<int>? rowid,
  }) {
    return EventsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      image128Url: image128Url ?? this.image128Url,
      type: type ?? this.type,
      trades: trades ?? this.trades,
      totalVolume: totalVolume ?? this.totalVolume,
      endsAt: endsAt ?? this.endsAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (image128Url.present) {
      map['image128_url'] = Variable<String>(image128Url.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (trades.present) {
      map['trades'] = Variable<int>(trades.value);
    }
    if (totalVolume.present) {
      map['total_volume'] = Variable<double>(totalVolume.value);
    }
    if (endsAt.present) {
      map['ends_at'] = Variable<DateTime>(endsAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('image128Url: $image128Url, ')
          ..write('type: $type, ')
          ..write('trades: $trades, ')
          ..write('totalVolume: $totalVolume, ')
          ..write('endsAt: $endsAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MarketsTable extends Markets with TableInfo<$MarketsTable, Market> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MarketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eventIdMeta = const VerificationMeta(
    'eventId',
  );
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
    'event_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES events (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yesBuyPriceMeta = const VerificationMeta(
    'yesBuyPrice',
  );
  @override
  late final GeneratedColumn<double> yesBuyPrice = GeneratedColumn<double>(
    'yes_buy_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noBuyPriceMeta = const VerificationMeta(
    'noBuyPrice',
  );
  @override
  late final GeneratedColumn<double> noBuyPrice = GeneratedColumn<double>(
    'no_buy_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yesProfitForEstimateMeta =
      const VerificationMeta('yesProfitForEstimate');
  @override
  late final GeneratedColumn<double> yesProfitForEstimate =
      GeneratedColumn<double>(
        'yes_profit_for_estimate',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  static const VerificationMeta _noProfitForEstimateMeta =
      const VerificationMeta('noProfitForEstimate');
  @override
  late final GeneratedColumn<double> noProfitForEstimate =
      GeneratedColumn<double>(
        'no_profit_for_estimate',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  static const VerificationMeta _yesPriceForEstimateMeta =
      const VerificationMeta('yesPriceForEstimate');
  @override
  late final GeneratedColumn<double> yesPriceForEstimate =
      GeneratedColumn<double>(
        'yes_price_for_estimate',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  static const VerificationMeta _noPriceForEstimateMeta =
      const VerificationMeta('noPriceForEstimate');
  @override
  late final GeneratedColumn<double> noPriceForEstimate =
      GeneratedColumn<double>(
        'no_price_for_estimate',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    eventId,
    title,
    imageUrl,
    yesBuyPrice,
    noBuyPrice,
    yesProfitForEstimate,
    noProfitForEstimate,
    yesPriceForEstimate,
    noPriceForEstimate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'markets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Market> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(
        _eventIdMeta,
        eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta),
      );
    } else if (isInserting) {
      context.missing(_eventIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('yes_buy_price')) {
      context.handle(
        _yesBuyPriceMeta,
        yesBuyPrice.isAcceptableOrUnknown(
          data['yes_buy_price']!,
          _yesBuyPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_yesBuyPriceMeta);
    }
    if (data.containsKey('no_buy_price')) {
      context.handle(
        _noBuyPriceMeta,
        noBuyPrice.isAcceptableOrUnknown(
          data['no_buy_price']!,
          _noBuyPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_noBuyPriceMeta);
    }
    if (data.containsKey('yes_profit_for_estimate')) {
      context.handle(
        _yesProfitForEstimateMeta,
        yesProfitForEstimate.isAcceptableOrUnknown(
          data['yes_profit_for_estimate']!,
          _yesProfitForEstimateMeta,
        ),
      );
    }
    if (data.containsKey('no_profit_for_estimate')) {
      context.handle(
        _noProfitForEstimateMeta,
        noProfitForEstimate.isAcceptableOrUnknown(
          data['no_profit_for_estimate']!,
          _noProfitForEstimateMeta,
        ),
      );
    }
    if (data.containsKey('yes_price_for_estimate')) {
      context.handle(
        _yesPriceForEstimateMeta,
        yesPriceForEstimate.isAcceptableOrUnknown(
          data['yes_price_for_estimate']!,
          _yesPriceForEstimateMeta,
        ),
      );
    }
    if (data.containsKey('no_price_for_estimate')) {
      context.handle(
        _noPriceForEstimateMeta,
        noPriceForEstimate.isAcceptableOrUnknown(
          data['no_price_for_estimate']!,
          _noPriceForEstimateMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Market map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Market(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      eventId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      yesBuyPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}yes_buy_price'],
      )!,
      noBuyPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}no_buy_price'],
      )!,
      yesProfitForEstimate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}yes_profit_for_estimate'],
      )!,
      noProfitForEstimate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}no_profit_for_estimate'],
      )!,
      yesPriceForEstimate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}yes_price_for_estimate'],
      )!,
      noPriceForEstimate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}no_price_for_estimate'],
      )!,
    );
  }

  @override
  $MarketsTable createAlias(String alias) {
    return $MarketsTable(attachedDatabase, alias);
  }
}

class Market extends DataClass implements Insertable<Market> {
  final String id;
  final String eventId;
  final String title;
  final String imageUrl;
  final double yesBuyPrice;
  final double noBuyPrice;
  final double yesProfitForEstimate;
  final double noProfitForEstimate;
  final double yesPriceForEstimate;
  final double noPriceForEstimate;
  const Market({
    required this.id,
    required this.eventId,
    required this.title,
    required this.imageUrl,
    required this.yesBuyPrice,
    required this.noBuyPrice,
    required this.yesProfitForEstimate,
    required this.noProfitForEstimate,
    required this.yesPriceForEstimate,
    required this.noPriceForEstimate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['event_id'] = Variable<String>(eventId);
    map['title'] = Variable<String>(title);
    map['image_url'] = Variable<String>(imageUrl);
    map['yes_buy_price'] = Variable<double>(yesBuyPrice);
    map['no_buy_price'] = Variable<double>(noBuyPrice);
    map['yes_profit_for_estimate'] = Variable<double>(yesProfitForEstimate);
    map['no_profit_for_estimate'] = Variable<double>(noProfitForEstimate);
    map['yes_price_for_estimate'] = Variable<double>(yesPriceForEstimate);
    map['no_price_for_estimate'] = Variable<double>(noPriceForEstimate);
    return map;
  }

  MarketsCompanion toCompanion(bool nullToAbsent) {
    return MarketsCompanion(
      id: Value(id),
      eventId: Value(eventId),
      title: Value(title),
      imageUrl: Value(imageUrl),
      yesBuyPrice: Value(yesBuyPrice),
      noBuyPrice: Value(noBuyPrice),
      yesProfitForEstimate: Value(yesProfitForEstimate),
      noProfitForEstimate: Value(noProfitForEstimate),
      yesPriceForEstimate: Value(yesPriceForEstimate),
      noPriceForEstimate: Value(noPriceForEstimate),
    );
  }

  factory Market.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Market(
      id: serializer.fromJson<String>(json['id']),
      eventId: serializer.fromJson<String>(json['eventId']),
      title: serializer.fromJson<String>(json['title']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      yesBuyPrice: serializer.fromJson<double>(json['yesBuyPrice']),
      noBuyPrice: serializer.fromJson<double>(json['noBuyPrice']),
      yesProfitForEstimate: serializer.fromJson<double>(
        json['yesProfitForEstimate'],
      ),
      noProfitForEstimate: serializer.fromJson<double>(
        json['noProfitForEstimate'],
      ),
      yesPriceForEstimate: serializer.fromJson<double>(
        json['yesPriceForEstimate'],
      ),
      noPriceForEstimate: serializer.fromJson<double>(
        json['noPriceForEstimate'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'eventId': serializer.toJson<String>(eventId),
      'title': serializer.toJson<String>(title),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'yesBuyPrice': serializer.toJson<double>(yesBuyPrice),
      'noBuyPrice': serializer.toJson<double>(noBuyPrice),
      'yesProfitForEstimate': serializer.toJson<double>(yesProfitForEstimate),
      'noProfitForEstimate': serializer.toJson<double>(noProfitForEstimate),
      'yesPriceForEstimate': serializer.toJson<double>(yesPriceForEstimate),
      'noPriceForEstimate': serializer.toJson<double>(noPriceForEstimate),
    };
  }

  Market copyWith({
    String? id,
    String? eventId,
    String? title,
    String? imageUrl,
    double? yesBuyPrice,
    double? noBuyPrice,
    double? yesProfitForEstimate,
    double? noProfitForEstimate,
    double? yesPriceForEstimate,
    double? noPriceForEstimate,
  }) => Market(
    id: id ?? this.id,
    eventId: eventId ?? this.eventId,
    title: title ?? this.title,
    imageUrl: imageUrl ?? this.imageUrl,
    yesBuyPrice: yesBuyPrice ?? this.yesBuyPrice,
    noBuyPrice: noBuyPrice ?? this.noBuyPrice,
    yesProfitForEstimate: yesProfitForEstimate ?? this.yesProfitForEstimate,
    noProfitForEstimate: noProfitForEstimate ?? this.noProfitForEstimate,
    yesPriceForEstimate: yesPriceForEstimate ?? this.yesPriceForEstimate,
    noPriceForEstimate: noPriceForEstimate ?? this.noPriceForEstimate,
  );
  Market copyWithCompanion(MarketsCompanion data) {
    return Market(
      id: data.id.present ? data.id.value : this.id,
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      title: data.title.present ? data.title.value : this.title,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      yesBuyPrice: data.yesBuyPrice.present
          ? data.yesBuyPrice.value
          : this.yesBuyPrice,
      noBuyPrice: data.noBuyPrice.present
          ? data.noBuyPrice.value
          : this.noBuyPrice,
      yesProfitForEstimate: data.yesProfitForEstimate.present
          ? data.yesProfitForEstimate.value
          : this.yesProfitForEstimate,
      noProfitForEstimate: data.noProfitForEstimate.present
          ? data.noProfitForEstimate.value
          : this.noProfitForEstimate,
      yesPriceForEstimate: data.yesPriceForEstimate.present
          ? data.yesPriceForEstimate.value
          : this.yesPriceForEstimate,
      noPriceForEstimate: data.noPriceForEstimate.present
          ? data.noPriceForEstimate.value
          : this.noPriceForEstimate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Market(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('yesBuyPrice: $yesBuyPrice, ')
          ..write('noBuyPrice: $noBuyPrice, ')
          ..write('yesProfitForEstimate: $yesProfitForEstimate, ')
          ..write('noProfitForEstimate: $noProfitForEstimate, ')
          ..write('yesPriceForEstimate: $yesPriceForEstimate, ')
          ..write('noPriceForEstimate: $noPriceForEstimate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    eventId,
    title,
    imageUrl,
    yesBuyPrice,
    noBuyPrice,
    yesProfitForEstimate,
    noProfitForEstimate,
    yesPriceForEstimate,
    noPriceForEstimate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Market &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.title == this.title &&
          other.imageUrl == this.imageUrl &&
          other.yesBuyPrice == this.yesBuyPrice &&
          other.noBuyPrice == this.noBuyPrice &&
          other.yesProfitForEstimate == this.yesProfitForEstimate &&
          other.noProfitForEstimate == this.noProfitForEstimate &&
          other.yesPriceForEstimate == this.yesPriceForEstimate &&
          other.noPriceForEstimate == this.noPriceForEstimate);
}

class MarketsCompanion extends UpdateCompanion<Market> {
  final Value<String> id;
  final Value<String> eventId;
  final Value<String> title;
  final Value<String> imageUrl;
  final Value<double> yesBuyPrice;
  final Value<double> noBuyPrice;
  final Value<double> yesProfitForEstimate;
  final Value<double> noProfitForEstimate;
  final Value<double> yesPriceForEstimate;
  final Value<double> noPriceForEstimate;
  final Value<int> rowid;
  const MarketsCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.title = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.yesBuyPrice = const Value.absent(),
    this.noBuyPrice = const Value.absent(),
    this.yesProfitForEstimate = const Value.absent(),
    this.noProfitForEstimate = const Value.absent(),
    this.yesPriceForEstimate = const Value.absent(),
    this.noPriceForEstimate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MarketsCompanion.insert({
    required String id,
    required String eventId,
    required String title,
    required String imageUrl,
    required double yesBuyPrice,
    required double noBuyPrice,
    this.yesProfitForEstimate = const Value.absent(),
    this.noProfitForEstimate = const Value.absent(),
    this.yesPriceForEstimate = const Value.absent(),
    this.noPriceForEstimate = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       eventId = Value(eventId),
       title = Value(title),
       imageUrl = Value(imageUrl),
       yesBuyPrice = Value(yesBuyPrice),
       noBuyPrice = Value(noBuyPrice);
  static Insertable<Market> custom({
    Expression<String>? id,
    Expression<String>? eventId,
    Expression<String>? title,
    Expression<String>? imageUrl,
    Expression<double>? yesBuyPrice,
    Expression<double>? noBuyPrice,
    Expression<double>? yesProfitForEstimate,
    Expression<double>? noProfitForEstimate,
    Expression<double>? yesPriceForEstimate,
    Expression<double>? noPriceForEstimate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (title != null) 'title': title,
      if (imageUrl != null) 'image_url': imageUrl,
      if (yesBuyPrice != null) 'yes_buy_price': yesBuyPrice,
      if (noBuyPrice != null) 'no_buy_price': noBuyPrice,
      if (yesProfitForEstimate != null)
        'yes_profit_for_estimate': yesProfitForEstimate,
      if (noProfitForEstimate != null)
        'no_profit_for_estimate': noProfitForEstimate,
      if (yesPriceForEstimate != null)
        'yes_price_for_estimate': yesPriceForEstimate,
      if (noPriceForEstimate != null)
        'no_price_for_estimate': noPriceForEstimate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MarketsCompanion copyWith({
    Value<String>? id,
    Value<String>? eventId,
    Value<String>? title,
    Value<String>? imageUrl,
    Value<double>? yesBuyPrice,
    Value<double>? noBuyPrice,
    Value<double>? yesProfitForEstimate,
    Value<double>? noProfitForEstimate,
    Value<double>? yesPriceForEstimate,
    Value<double>? noPriceForEstimate,
    Value<int>? rowid,
  }) {
    return MarketsCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      yesBuyPrice: yesBuyPrice ?? this.yesBuyPrice,
      noBuyPrice: noBuyPrice ?? this.noBuyPrice,
      yesProfitForEstimate: yesProfitForEstimate ?? this.yesProfitForEstimate,
      noProfitForEstimate: noProfitForEstimate ?? this.noProfitForEstimate,
      yesPriceForEstimate: yesPriceForEstimate ?? this.yesPriceForEstimate,
      noPriceForEstimate: noPriceForEstimate ?? this.noPriceForEstimate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (yesBuyPrice.present) {
      map['yes_buy_price'] = Variable<double>(yesBuyPrice.value);
    }
    if (noBuyPrice.present) {
      map['no_buy_price'] = Variable<double>(noBuyPrice.value);
    }
    if (yesProfitForEstimate.present) {
      map['yes_profit_for_estimate'] = Variable<double>(
        yesProfitForEstimate.value,
      );
    }
    if (noProfitForEstimate.present) {
      map['no_profit_for_estimate'] = Variable<double>(
        noProfitForEstimate.value,
      );
    }
    if (yesPriceForEstimate.present) {
      map['yes_price_for_estimate'] = Variable<double>(
        yesPriceForEstimate.value,
      );
    }
    if (noPriceForEstimate.present) {
      map['no_price_for_estimate'] = Variable<double>(noPriceForEstimate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MarketsCompanion(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('yesBuyPrice: $yesBuyPrice, ')
          ..write('noBuyPrice: $noBuyPrice, ')
          ..write('yesProfitForEstimate: $yesProfitForEstimate, ')
          ..write('noProfitForEstimate: $noProfitForEstimate, ')
          ..write('yesPriceForEstimate: $yesPriceForEstimate, ')
          ..write('noPriceForEstimate: $noPriceForEstimate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EventsTable events = $EventsTable(this);
  late final $MarketsTable markets = $MarketsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [events, markets];
}

typedef $$EventsTableCreateCompanionBuilder =
    EventsCompanion Function({
      required String id,
      required String title,
      required String imageUrl,
      required String image128Url,
      required String type,
      required int trades,
      Value<double> totalVolume,
      Value<DateTime?> endsAt,
      Value<int> rowid,
    });
typedef $$EventsTableUpdateCompanionBuilder =
    EventsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> imageUrl,
      Value<String> image128Url,
      Value<String> type,
      Value<int> trades,
      Value<double> totalVolume,
      Value<DateTime?> endsAt,
      Value<int> rowid,
    });

final class $$EventsTableReferences
    extends BaseReferences<_$AppDatabase, $EventsTable, Event> {
  $$EventsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$MarketsTable, List<Market>> _marketsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.markets,
    aliasName: $_aliasNameGenerator(db.events.id, db.markets.eventId),
  );

  $$MarketsTableProcessedTableManager get marketsRefs {
    final manager = $$MarketsTableTableManager(
      $_db,
      $_db.markets,
    ).filter((f) => f.eventId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_marketsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image128Url => $composableBuilder(
    column: $table.image128Url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get trades => $composableBuilder(
    column: $table.trades,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalVolume => $composableBuilder(
    column: $table.totalVolume,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endsAt => $composableBuilder(
    column: $table.endsAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> marketsRefs(
    Expression<bool> Function($$MarketsTableFilterComposer f) f,
  ) {
    final $$MarketsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.markets,
      getReferencedColumn: (t) => t.eventId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MarketsTableFilterComposer(
            $db: $db,
            $table: $db.markets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image128Url => $composableBuilder(
    column: $table.image128Url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get trades => $composableBuilder(
    column: $table.trades,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalVolume => $composableBuilder(
    column: $table.totalVolume,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endsAt => $composableBuilder(
    column: $table.endsAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get image128Url => $composableBuilder(
    column: $table.image128Url,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get trades =>
      $composableBuilder(column: $table.trades, builder: (column) => column);

  GeneratedColumn<double> get totalVolume => $composableBuilder(
    column: $table.totalVolume,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endsAt =>
      $composableBuilder(column: $table.endsAt, builder: (column) => column);

  Expression<T> marketsRefs<T extends Object>(
    Expression<T> Function($$MarketsTableAnnotationComposer a) f,
  ) {
    final $$MarketsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.markets,
      getReferencedColumn: (t) => t.eventId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MarketsTableAnnotationComposer(
            $db: $db,
            $table: $db.markets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventsTable,
          Event,
          $$EventsTableFilterComposer,
          $$EventsTableOrderingComposer,
          $$EventsTableAnnotationComposer,
          $$EventsTableCreateCompanionBuilder,
          $$EventsTableUpdateCompanionBuilder,
          (Event, $$EventsTableReferences),
          Event,
          PrefetchHooks Function({bool marketsRefs})
        > {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> image128Url = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> trades = const Value.absent(),
                Value<double> totalVolume = const Value.absent(),
                Value<DateTime?> endsAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion(
                id: id,
                title: title,
                imageUrl: imageUrl,
                image128Url: image128Url,
                type: type,
                trades: trades,
                totalVolume: totalVolume,
                endsAt: endsAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String imageUrl,
                required String image128Url,
                required String type,
                required int trades,
                Value<double> totalVolume = const Value.absent(),
                Value<DateTime?> endsAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion.insert(
                id: id,
                title: title,
                imageUrl: imageUrl,
                image128Url: image128Url,
                type: type,
                trades: trades,
                totalVolume: totalVolume,
                endsAt: endsAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$EventsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({marketsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (marketsRefs) db.markets],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (marketsRefs)
                    await $_getPrefetchedData<Event, $EventsTable, Market>(
                      currentTable: table,
                      referencedTable: $$EventsTableReferences
                          ._marketsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$EventsTableReferences(db, table, p0).marketsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.eventId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$EventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventsTable,
      Event,
      $$EventsTableFilterComposer,
      $$EventsTableOrderingComposer,
      $$EventsTableAnnotationComposer,
      $$EventsTableCreateCompanionBuilder,
      $$EventsTableUpdateCompanionBuilder,
      (Event, $$EventsTableReferences),
      Event,
      PrefetchHooks Function({bool marketsRefs})
    >;
typedef $$MarketsTableCreateCompanionBuilder =
    MarketsCompanion Function({
      required String id,
      required String eventId,
      required String title,
      required String imageUrl,
      required double yesBuyPrice,
      required double noBuyPrice,
      Value<double> yesProfitForEstimate,
      Value<double> noProfitForEstimate,
      Value<double> yesPriceForEstimate,
      Value<double> noPriceForEstimate,
      Value<int> rowid,
    });
typedef $$MarketsTableUpdateCompanionBuilder =
    MarketsCompanion Function({
      Value<String> id,
      Value<String> eventId,
      Value<String> title,
      Value<String> imageUrl,
      Value<double> yesBuyPrice,
      Value<double> noBuyPrice,
      Value<double> yesProfitForEstimate,
      Value<double> noProfitForEstimate,
      Value<double> yesPriceForEstimate,
      Value<double> noPriceForEstimate,
      Value<int> rowid,
    });

final class $$MarketsTableReferences
    extends BaseReferences<_$AppDatabase, $MarketsTable, Market> {
  $$MarketsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $EventsTable _eventIdTable(_$AppDatabase db) => db.events.createAlias(
    $_aliasNameGenerator(db.markets.eventId, db.events.id),
  );

  $$EventsTableProcessedTableManager get eventId {
    final $_column = $_itemColumn<String>('event_id')!;

    final manager = $$EventsTableTableManager(
      $_db,
      $_db.events,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_eventIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$MarketsTableFilterComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get yesBuyPrice => $composableBuilder(
    column: $table.yesBuyPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get noBuyPrice => $composableBuilder(
    column: $table.noBuyPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get yesProfitForEstimate => $composableBuilder(
    column: $table.yesProfitForEstimate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get noProfitForEstimate => $composableBuilder(
    column: $table.noProfitForEstimate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get yesPriceForEstimate => $composableBuilder(
    column: $table.yesPriceForEstimate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get noPriceForEstimate => $composableBuilder(
    column: $table.noPriceForEstimate,
    builder: (column) => ColumnFilters(column),
  );

  $$EventsTableFilterComposer get eventId {
    final $$EventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableFilterComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MarketsTableOrderingComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get yesBuyPrice => $composableBuilder(
    column: $table.yesBuyPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get noBuyPrice => $composableBuilder(
    column: $table.noBuyPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get yesProfitForEstimate => $composableBuilder(
    column: $table.yesProfitForEstimate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get noProfitForEstimate => $composableBuilder(
    column: $table.noProfitForEstimate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get yesPriceForEstimate => $composableBuilder(
    column: $table.yesPriceForEstimate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get noPriceForEstimate => $composableBuilder(
    column: $table.noPriceForEstimate,
    builder: (column) => ColumnOrderings(column),
  );

  $$EventsTableOrderingComposer get eventId {
    final $$EventsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableOrderingComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MarketsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<double> get yesBuyPrice => $composableBuilder(
    column: $table.yesBuyPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get noBuyPrice => $composableBuilder(
    column: $table.noBuyPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get yesProfitForEstimate => $composableBuilder(
    column: $table.yesProfitForEstimate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get noProfitForEstimate => $composableBuilder(
    column: $table.noProfitForEstimate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get yesPriceForEstimate => $composableBuilder(
    column: $table.yesPriceForEstimate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get noPriceForEstimate => $composableBuilder(
    column: $table.noPriceForEstimate,
    builder: (column) => column,
  );

  $$EventsTableAnnotationComposer get eventId {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableAnnotationComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MarketsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MarketsTable,
          Market,
          $$MarketsTableFilterComposer,
          $$MarketsTableOrderingComposer,
          $$MarketsTableAnnotationComposer,
          $$MarketsTableCreateCompanionBuilder,
          $$MarketsTableUpdateCompanionBuilder,
          (Market, $$MarketsTableReferences),
          Market,
          PrefetchHooks Function({bool eventId})
        > {
  $$MarketsTableTableManager(_$AppDatabase db, $MarketsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MarketsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MarketsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MarketsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> eventId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<double> yesBuyPrice = const Value.absent(),
                Value<double> noBuyPrice = const Value.absent(),
                Value<double> yesProfitForEstimate = const Value.absent(),
                Value<double> noProfitForEstimate = const Value.absent(),
                Value<double> yesPriceForEstimate = const Value.absent(),
                Value<double> noPriceForEstimate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MarketsCompanion(
                id: id,
                eventId: eventId,
                title: title,
                imageUrl: imageUrl,
                yesBuyPrice: yesBuyPrice,
                noBuyPrice: noBuyPrice,
                yesProfitForEstimate: yesProfitForEstimate,
                noProfitForEstimate: noProfitForEstimate,
                yesPriceForEstimate: yesPriceForEstimate,
                noPriceForEstimate: noPriceForEstimate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String eventId,
                required String title,
                required String imageUrl,
                required double yesBuyPrice,
                required double noBuyPrice,
                Value<double> yesProfitForEstimate = const Value.absent(),
                Value<double> noProfitForEstimate = const Value.absent(),
                Value<double> yesPriceForEstimate = const Value.absent(),
                Value<double> noPriceForEstimate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MarketsCompanion.insert(
                id: id,
                eventId: eventId,
                title: title,
                imageUrl: imageUrl,
                yesBuyPrice: yesBuyPrice,
                noBuyPrice: noBuyPrice,
                yesProfitForEstimate: yesProfitForEstimate,
                noProfitForEstimate: noProfitForEstimate,
                yesPriceForEstimate: yesPriceForEstimate,
                noPriceForEstimate: noPriceForEstimate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MarketsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({eventId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (eventId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.eventId,
                                referencedTable: $$MarketsTableReferences
                                    ._eventIdTable(db),
                                referencedColumn: $$MarketsTableReferences
                                    ._eventIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$MarketsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MarketsTable,
      Market,
      $$MarketsTableFilterComposer,
      $$MarketsTableOrderingComposer,
      $$MarketsTableAnnotationComposer,
      $$MarketsTableCreateCompanionBuilder,
      $$MarketsTableUpdateCompanionBuilder,
      (Market, $$MarketsTableReferences),
      Market,
      PrefetchHooks Function({bool eventId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$MarketsTableTableManager get markets =>
      $$MarketsTableTableManager(_db, _db.markets);
}
