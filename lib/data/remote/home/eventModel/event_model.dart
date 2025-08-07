import 'package:drift/drift.dart' as drift;
import 'package:json_annotation/json_annotation.dart';
import '../../../../core/db/app_database.dart';
import '../../../../domain/entities/event_entity.dart';
import '../marketModel/market_model.dart';

part 'event_model.g.dart';


@JsonSerializable()
class EventModel {
  final String id;
  final String title;
  final String imageUrl;
  @JsonKey(name: 'image128Url')
  final String image128Url;
  final String type;
  final List<MarketModel> markets;
  @JsonKey(name: 'totalOrders')
  final int trades;
  @JsonKey(name: 'resolutionDate')
  final DateTime? endsAt;
  final double totalVolume;


  EventModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.image128Url,
    required this.type,
    required this.markets,
    required this.trades,
    required this.totalVolume,
    this.endsAt,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  EventEntity toEntity() {
    return EventEntity(
        id: id,
        title: title,
        imageUrl: imageUrl,
        image128Url: image128Url,
        type: type == "SINGLE_MARKET" ? EventType.single : EventType.combined,
        markets: markets.map((e) => e.toEntity()).toList(),
        trades: trades,
        totalVolume: totalVolume,
        endsAt: endsAt
    );
  }

  EventsCompanion toCompanion() {
    return EventsCompanion(
      id: drift.Value(id),
      title: drift.Value(title),
      imageUrl: drift.Value(imageUrl),
      image128Url: drift.Value(image128Url),
      type: drift.Value(type),
      trades: drift.Value(trades),
      totalVolume: drift.Value(totalVolume),
      endsAt: drift.Value(endsAt),
    );
  }
}


@JsonSerializable(createToJson: false)
class PaginationInfo {
  final int page;
  final int size;
  final int totalCount;
  final int lastPage;

  PaginationInfo({required this.page, required this.size, required this.totalCount, required this.lastPage});

  factory PaginationInfo.fromJson(Map<String, dynamic> json) => _$PaginationInfoFromJson(json);
}


@JsonSerializable(createToJson: false)
class EventResponseModel {
  @JsonKey(name: 'events')
  final List<EventModel> events;
  @JsonKey(name: 'pagination')
  final PaginationInfo pagination;


  EventResponseModel({required this.events, required this.pagination});

  factory EventResponseModel.fromJson(Map<String, dynamic> json) => _$EventResponseModelFromJson(json);
}
