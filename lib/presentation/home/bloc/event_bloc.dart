import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:rxdart/rxdart.dart';
import '../../../domain/entities/event_entity.dart';
import '../../../domain/usecases/get_public_events.dart';

part 'event_event.dart';
part 'event_state.dart';

const _pageSize = 10;

EventTransformer<E> debounceRestartable<E>() {
  return (events, mapper) {
    return events.debounceTime(const Duration(milliseconds: 300)).switchMap(mapper);
  };
}

class EventBloc extends Bloc<EventEvent, EventState> {
  final GetPublicEvents getPublicEvents;

  EventBloc({required this.getPublicEvents}) : super(const EventState()) {
    on<FetchEvents>(_onFetchEvents, transformer: droppable());
    on<SearchEvents>(_onSearchEvents, transformer: debounceRestartable());
  }

  Future<void> _onFetchEvents(FetchEvents event, Emitter<EventState> emit) async {
    // If we are already at max and not doing a fresh search, do nothing.
    if (state.hasReachedMax && state.events.isNotEmpty) return;

    // Show loading indicator only on initial load or subsequent page loads, not on search trigger
    if (state.status != EventStatus.loading) {
      emit(state.copyWith(status: EventStatus.loading));
    }

    final result = await getPublicEvents(GetPublicEventsParams(
      page: state.currentPage,
      keyword: state.currentKeyword,
      category: state.currentCategory,
    ));

    result.fold(
          (failure) => emit(state.copyWith(status: EventStatus.failure)),
          (newEvents) {
        if (newEvents.isEmpty) {
          emit(state.copyWith(hasReachedMax: true, status: EventStatus.success));
        } else {
          emit(state.copyWith(
            status: EventStatus.success,
            events: List.of(state.events)..addAll(newEvents),
            hasReachedMax: newEvents.length < _pageSize,
            currentPage: state.currentPage + 1,
          ));
        }
      },
    );
  }

  Future<void> _onSearchEvents(SearchEvents event, Emitter<EventState> emit) async {
    // Reset state for a new search/filter action
    emit(state.copyWith(
      keyword: event.keyword ?? state.currentKeyword, // Persist old keyword if new one isn't provided
      category: event.category ?? state.currentCategory, // Persist old category
      currentPage: 1,
      events: [],
      hasReachedMax: false,
      status: EventStatus.initial, // Reset status to allow fetch
    ));

    // Trigger the actual fetch
    add(FetchEvents());
  }
}
