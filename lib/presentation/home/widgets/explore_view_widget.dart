import 'package:flutter/material.dart';
import 'package:qalla/app/config/theme/spacing.dart';
import 'package:qalla/presentation/home/widgets/search_field.dart';
import '../../../app/config/theme/app_colors.dart';
import '../../../app/config/theme/dimens.dart';
import 'category_pills.dart';
import 'event_list.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding16),
        child: Column(
          children: [
            VerticalSpacing(space: spacing20),
            SearchField(),
            VerticalSpacing(space: spacing36),
            CategoryPills(),
            VerticalSpacing(space: spacing18),
            Expanded(child: EventList()),
          ],
        ),
      ),
    );
  }
}