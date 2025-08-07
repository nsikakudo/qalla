part of 'event_bloc.dart';

abstract class EventEvent extends Equatable {
  const EventEvent();

  @override
  List<Object?> get props => [];
}

class FetchEvents extends EventEvent {}

class SearchEvents extends EventEvent {
  final String? keyword;
  final String? category;

  const SearchEvents({this.keyword, this.category});

  @override
  List<Object?> get props => [keyword, category];
}