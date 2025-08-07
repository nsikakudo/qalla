import '../../core/db/app_database.dart';
import '../../core/error/exceptions.dart';
import '../../domain/entities/event_entity.dart';
import '../../domain/entities/market_entity.dart';
import '../remote/home/eventModel/event_model.dart';

abstract class EventLocalDataSource {
  Future<List<EventEntity>> getEvents();
  Future<void> cacheEvents(List<EventModel> eventsToCache);
}


class EventLocalDataSourceImpl implements EventLocalDataSource {
  final AppDatabase database;

  EventLocalDataSourceImpl(this.database);

  @override
  Future<void> cacheEvents(List<EventModel> eventsToCache) async {
    try {
      await database.batch((batch) {
        batch.deleteAll(database.markets);
        batch.deleteAll(database.events);

        for (final event in eventsToCache) {
          batch.insert(database.events, event.toCompanion());
          for (final market in event.markets) {
            batch.insert(database.markets, market.toCompanion(event.id));
          }
        }
      });
    } catch (e) {
      throw CacheException('Failed to cache events: ${e.toString()}');
    }
  }

  @override
  Future<List<EventEntity>> getEvents() async {
    try {
      final eventRows = await database.select(database.events).get();
      final marketRows = await database.select(database.markets).get();

      return eventRows.map((eventRow) {
        final marketsForEvent = marketRows
            .where((marketRow) => marketRow.eventId == eventRow.id)
            .map((marketRow) => MarketEntity(
          id: marketRow.id,
          title: marketRow.title,
          imageUrl: marketRow.imageUrl,
          yesPrice: (marketRow.yesBuyPrice * 100).toInt(),
          noPrice: (marketRow.noBuyPrice * 100).toInt(),
          yesPriceForEstimate: marketRow.yesPriceForEstimate,
          noPriceForEstimate: marketRow.noPriceForEstimate,
          yesProfitForEstimate: marketRow.yesProfitForEstimate,
          noProfitForEstimate: marketRow.noProfitForEstimate,
        ))
            .toList();

        return EventEntity(
            id: eventRow.id,
            title: eventRow.title,
            imageUrl: eventRow.imageUrl,
            image128Url: eventRow.image128Url,
            type: eventRow.type == "SINGLE_MARKET" ? EventType.single : EventType.combined,
            markets: marketsForEvent,
            trades: eventRow.trades,
            totalVolume: eventRow.totalVolume,
            endsAt: eventRow.endsAt);
      }).toList();
    } catch (e) {
      throw CacheException('Failed to retrieve events from cache: ${e.toString()}');
    }
  }
}
