import 'package:dartz/dartz.dart';
import 'package:qalla/core/error/failure.dart';
import '../entities/event_entity.dart';

abstract class EventRepository {
  Future<Either<Failure, List<EventEntity>>> getPublicEvents({
    required int page,
    String? keyword,
    String? category,
  });
}