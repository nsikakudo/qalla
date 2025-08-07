// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketModel _$MarketModelFromJson(Map<String, dynamic> json) => MarketModel(
  id: json['id'] as String,
  title: json['title'] as String,
  imageUrl: json['imageUrl'] as String,
  yesBuyPrice: (json['yesBuyPrice'] as num).toDouble(),
  noBuyPrice: (json['noBuyPrice'] as num).toDouble(),
  yesProfitForEstimate: (json['yesProfitForEstimate'] as num).toDouble(),
  noProfitForEstimate: (json['noProfitForEstimate'] as num).toDouble(),
  yesPriceForEstimate: (json['yesPriceForEstimate'] as num).toDouble(),
  noPriceForEstimate: (json['noPriceForEstimate'] as num).toDouble(),
);

Map<String, dynamic> _$MarketModelToJson(MarketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'yesBuyPrice': instance.yesBuyPrice,
      'noBuyPrice': instance.noBuyPrice,
      'yesProfitForEstimate': instance.yesProfitForEstimate,
      'noProfitForEstimate': instance.noProfitForEstimate,
      'yesPriceForEstimate': instance.yesPriceForEstimate,
      'noPriceForEstimate': instance.noPriceForEstimate,
    };
