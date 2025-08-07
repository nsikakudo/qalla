import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalla/app/config/theme/dimens.dart';
import '../../../app/config/theme/app_colors.dart';
import '../bloc/event_bloc.dart';

class CategoryPills extends StatelessWidget {
  const CategoryPills({super.key});

  static final List<Map<String, dynamic>> _categories = [
    {'displayName': 'Trending', 'apiKey': 'Trending', 'icon': Icons.trending_up},
    {'displayName': 'Watchlist', 'apiKey': 'Watchlist', 'icon': Icons.bookmark_border},
    {'displayName': 'Entertainment', 'apiKey': 'ENTERTAINMENT', 'icon': Icons.music_note_outlined},
    {'displayName': 'Sports', 'apiKey': 'SPORTS', 'icon': Icons.sports_soccer_sharp},
    {'displayName': 'X Posts', 'apiKey': 'X POSTS', 'icon': Icons.chat},
    {'displayName': 'Crypto', 'apiKey': 'CRYPTO', 'icon': Icons.currency_bitcoin},
    {'displayName': 'Politics', 'apiKey': 'POLITICS', 'icon': Icons.gavel},
    {'displayName': 'Economy', 'apiKey': 'ECONOMY', 'icon': Icons.insights},
    {'displayName': 'Technology', 'apiKey': 'TECHNOLOGY', 'icon': Icons.memory},
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          final categoryApiKey = category['apiKey'] as String;

          return BlocBuilder<EventBloc, EventState>(
            buildWhen: (previous, current) =>
            previous.currentCategory != current.currentCategory,
            builder: (context, state) {
              final isSelected = state.currentCategory == categoryApiKey;

              return _CategoryButton(
                name: category['displayName'] as String,
                icon: category['icon'],
                isSelected: isSelected,
                onTap: () {
                  if (!isSelected) {
                    context.read<EventBloc>().add(SearchEvents(
                        keyword: state.currentKeyword, category: categoryApiKey));
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryButton({
    required this.name,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColorExtension>()!;
    final backgroundColor = isSelected ? appColors.selectedCategoryBackground : appColors.unselectedCategoryBackground;
    final contentColor = isSelected ? appColors.selectedCategoryText : appColors.unselectedCategoryText;

    final iconWidget = Icon(icon, size: 20, color: contentColor);
    final textWidget = Text(
      name,
      style: TextStyle(
          fontWeight: FontWeight.w500,
          color: contentColor,
          fontFamily: customFontFamily,
          fontSize: 12
      ),
    );
    const spacer = SizedBox(width: 8);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: isSelected
              ? [iconWidget, spacer, textWidget]
              : [textWidget, spacer, iconWidget],
        ),
      ),
    );
  }
}