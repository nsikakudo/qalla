import 'package:equatable/equatable.dart';
import 'market_entity.dart';

enum EventType { single, combined }

class EventEntity extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final String image128Url;
  final EventType type;
  final List<MarketEntity> markets;
  final int trades;
  final double totalVolume;
  final DateTime? endsAt;

  const EventEntity({
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

  @override
  List<Object?> get props => [id, title, imageUrl, image128Url, type, markets, trades, totalVolume, endsAt];
}
