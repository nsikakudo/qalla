// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
  id: json['id'] as String,
  title: json['title'] as String,
  imageUrl: json['imageUrl'] as String,
  image128Url: json['image128Url'] as String,
  type: json['type'] as String,
  markets: (json['markets'] as List<dynamic>)
      .map((e) => MarketModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  trades: (json['totalOrders'] as num).toInt(),
  totalVolume: (json['totalVolume'] as num).toDouble(),
  endsAt: json['resolutionDate'] == null
      ? null
      : DateTime.parse(json['resolutionDate'] as String),
);

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'image128Url': instance.image128Url,
      'type': instance.type,
      'markets': instance.markets,
      'totalOrders': instance.trades,
      'resolutionDate': instance.endsAt?.toIso8601String(),
      'totalVolume': instance.totalVolume,
    };

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) =>
    PaginationInfo(
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      lastPage: (json['lastPage'] as num).toInt(),
    );

EventResponseModel _$EventResponseModelFromJson(Map<String, dynamic> json) =>
    EventResponseModel(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationInfo.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );
