import 'package:equatable/equatable.dart';

class MarketEntity extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final int yesPrice;
  final int noPrice;
  final double yesProfitForEstimate;
  final double noProfitForEstimate;
  final double yesPriceForEstimate;
  final double noPriceForEstimate;


  const MarketEntity({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.yesPrice,
    required this.noPrice,
    required this.yesProfitForEstimate,
    required this.noProfitForEstimate,
    required this.yesPriceForEstimate,
    required this.noPriceForEstimate,
  });

  @override
  List<Object?> get props => [id, title, imageUrl, yesPrice, noPrice, yesProfitForEstimate, noProfitForEstimate, yesPriceForEstimate, noPriceForEstimate];
}
