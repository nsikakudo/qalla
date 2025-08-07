import 'package:drift/drift.dart' as drift;
import 'package:json_annotation/json_annotation.dart';
import '../../../../core/db/app_database.dart';
import '../../../../domain/entities/market_entity.dart';

part 'market_model.g.dart';

@JsonSerializable()
class MarketModel {
  final String id;
  final String title;
  final String imageUrl;
  final double yesBuyPrice;
  final double noBuyPrice;
  final double yesProfitForEstimate;
  final double noProfitForEstimate;
  final double yesPriceForEstimate;
  final double noPriceForEstimate;

  MarketModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.yesBuyPrice,
    required this.noBuyPrice,
    required this.yesProfitForEstimate,
    required this.noProfitForEstimate,
    required this.yesPriceForEstimate,
    required this.noPriceForEstimate,
  });

  factory MarketModel.fromJson(Map<String, dynamic> json) => _$MarketModelFromJson(json);

  Map<String, dynamic> toJson() => _$MarketModelToJson(this);

  MarketEntity toEntity() {
    return MarketEntity(
        id: id,
        title: title,
        imageUrl: imageUrl,
        yesPrice: (yesBuyPrice * 100).toInt(),
        noPrice: (noBuyPrice * 100).toInt(),
        yesPriceForEstimate: yesPriceForEstimate,
        noPriceForEstimate: noPriceForEstimate,
        yesProfitForEstimate: yesProfitForEstimate,
        noProfitForEstimate: noProfitForEstimate
    );
  }

  MarketsCompanion toCompanion(String eventId) {
    return MarketsCompanion(
      id: drift.Value(id),
      eventId: drift.Value(eventId),
      title: drift.Value(title),
      imageUrl: drift.Value(imageUrl),
      yesBuyPrice: drift.Value(yesBuyPrice),
      noBuyPrice: drift.Value(noBuyPrice),
      yesPriceForEstimate: drift.Value(yesPriceForEstimate),
      noPriceForEstimate: drift.Value(noPriceForEstimate),
      yesProfitForEstimate: drift.Value(yesProfitForEstimate),
      noProfitForEstimate: drift.Value(noProfitForEstimate),
    );
  }
}
