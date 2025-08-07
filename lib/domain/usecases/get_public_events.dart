import 'package:dartz/dartz.dart';
import 'package:qalla/core/error/failure.dart';
import 'package:equatable/equatable.dart';
import '../../core/usecases/usecase.dart';
import '../entities/event_entity.dart';
import '../repositories/event_repository.dart';

class GetPublicEvents implements UseCase<List<EventEntity>, GetPublicEventsParams> {
  final EventRepository repository;

  GetPublicEvents(this.repository);

  @override
  Future<Either<Failure, List<EventEntity>>> call(GetPublicEventsParams params) async {
    return await repository.getPublicEvents(
      page: params.page,
      keyword: params.keyword,
      category: params.category,
    );
  }
}

class GetPublicEventsParams extends Equatable {
  final int page;
  final String? keyword;
  final String? category;

  const GetPublicEventsParams({
    required this.page,
    this.keyword,
    this.category,
  });

  @override
  List<Object?> get props => [page, keyword, category];
}