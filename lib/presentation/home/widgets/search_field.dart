import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../app/config/theme/app_colors.dart';
import '../../../core/utils/strings/home_string_constants.dart';
import '../bloc/event_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColors = theme.extension<AppColorExtension>()!;

    return TextField(
      cursorColor: appColors.primaryText,
      onChanged: (keyword) {
        final state = context.read<EventBloc>().state;
        context
            .read<EventBloc>()
            .add(SearchEvents(keyword: keyword, category: state.currentCategory));
      },
      decoration: InputDecoration(
        hintText: HomeStringConstants.searchMarketText,
        hintStyle: TextStyle(
            color: appColors.hintText,
            fontSize: 12,
            fontWeight: FontWeight.w500),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(
            'assets/icons/ic_search.svg',
            colorFilter: ColorFilter.mode(appColors.hintText, BlendMode.srcIn),
            height: 16,
            width: 16,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 16, minWidth: 16),
        filled: true,
        fillColor: theme.cardColor,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: appColors.cardBorder,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: appColors.cardBorder,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: theme.primaryColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}