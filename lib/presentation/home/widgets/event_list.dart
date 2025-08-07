import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/event_entity.dart';
import '../bloc/event_bloc.dart';
import 'event_card_combined.dart';
import 'event_card_single.dart';


class EventList extends StatefulWidget {
  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) context.read<EventBloc>().add(FetchEvents());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
        switch (state.status) {
          case EventStatus.failure:
            return const Center(child: Text('An error occurred, try again.'));

          case EventStatus.initial:
            return const Center(child: CircularProgressIndicator());

          case EventStatus.success:
          case EventStatus.loading:
            if (state.events.isEmpty && state.status == EventStatus.success) {
              return const Center(child: Text('No events found'));
            }
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.hasReachedMax ? state.events.length : state.events.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index >= state.events.length) {
                  return state.hasReachedMax ? const SizedBox.shrink() : const Center(child: CircularProgressIndicator());
                }

                final event = state.events[index];
                if (event.type == EventType.single) {
                  return EventCardSingle(event: event);
                } else {
                  return EventCardCombined(event: event);
                }
              },
            );
        }
      },
    );
  }
}