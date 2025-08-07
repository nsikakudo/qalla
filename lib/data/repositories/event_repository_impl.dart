import 'package:dartz/dartz.dart';
import '../../core/error/exceptions.dart';
import '../../core/error/failure.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/event_entity.dart';
import '../../domain/repositories/event_repository.dart';
import '../datasources/event_local_data_source.dart';
import '../datasources/event_remote_data_source.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource remoteDataSource;
  final EventLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  EventRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<EventEntity>>> getPublicEvents({
    required int page,
    String? keyword,
    String? category,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteEventsResponse = await remoteDataSource.getPublicEvents(
          page: page,
          keyword: keyword,
          category: category,
        );

        if (page == 1 && (keyword == null || keyword.isEmpty)) {
          await localDataSource.cacheEvents(remoteEventsResponse.events);
        }

        return Right(remoteEventsResponse.events.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      if (page > 1) {
        return const Right([]);
      }
      try {
        final localEventEntities = await localDataSource.getEvents();
        return Right(localEventEntities);
      } on CacheException catch (e) {
        return Left(CacheFailure(e.message));
      }
    }
  }
}
