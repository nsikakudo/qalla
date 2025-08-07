import 'package:flutter/material.dart';
import 'package:qalla/presentation/home/widgets/search_field.dart';
import '../../../app/config/theme/dimens.dart';
import 'category_pills.dart';
import 'event_list.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: spacing18),
            SearchField(),
            SizedBox(height: spacing18),
            CategoryPills(),
            SizedBox(height: spacing24),
            Expanded(child: EventList()),
          ],
        ),
      ),
    );
  }
}