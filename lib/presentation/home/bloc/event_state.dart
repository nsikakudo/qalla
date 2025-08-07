part of 'event_bloc.dart';

enum EventStatus { initial, loading, success, failure }

final class EventState extends Equatable {
  final EventStatus status;
  final List<EventEntity> events;
  final bool hasReachedMax;
  final int currentPage;
  final String? currentKeyword;
  final String? currentCategory;

  const EventState({
    this.status = EventStatus.initial,
    this.events = const <EventEntity>[],
    this.hasReachedMax = false,
    this.currentPage = 1,
    this.currentKeyword,
    this.currentCategory = 'Trending',
  });

  EventState copyWith({
    EventStatus? status,
    List<EventEntity>? events,
    bool? hasReachedMax,
    int? currentPage,
    String? keyword,
    String? category,
  }) {
    return EventState(
        status: status ?? this.status,
        events: events ?? this.events,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        currentPage: currentPage ?? this.currentPage,
        currentKeyword: keyword ?? currentKeyword,
        currentCategory: category ?? currentCategory
    );
  }

  @override
  List<Object?> get props => [
    status,
    events,
    hasReachedMax,
    currentPage,
    currentKeyword,
    currentCategory,
  ];
}