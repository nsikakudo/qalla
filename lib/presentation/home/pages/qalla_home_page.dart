import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../app/config/theme/app_colors.dart';
import '../../../app/config/theme/dimens.dart';
import '../../../app/config/theme/spacing.dart';
import '../../../core/di/service_locator.dart';
import '../../../core/utils/strings/home_string_constants.dart';
import '../bloc/event_bloc.dart';
import '../widgets/explore_view_widget.dart';

@RoutePage()
class QallaHomePage extends StatelessWidget {
  const QallaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<EventBloc>()..add(FetchEvents()),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: padding18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VerticalSpacing(space: spacing10),
                      SvgPicture.asset('assets/icons/qalla_logo.svg', height: 45),
                      const VerticalSpacing(space: spacing18),
                      TabBar(
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                        labelPadding: const EdgeInsets.only(right: 18),
                        unselectedLabelColor: AppColors.unselectedHeaderColor,
                        labelColor: AppColors.selectedHeaderColor,
                        labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: customFontFamily,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: customFontFamily,
                          // color: AppColors.unselectedHeaderColor
                        ),
                        tabs: [
                          Tab(text: HomeStringConstants.exploreText),
                          Tab(text: HomeStringConstants.portfolioText),
                          Tab(text: HomeStringConstants.activityText),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ExploreView(),
                      Center(
                          child: Text(HomeStringConstants.comingSoonText,
                            style: TextStyle(
                              color: AppColors.darkGray,
                              fontSize: 16,
                              fontFamily: customFontFamily,
                              fontWeight: FontWeight.w600
                            ),
                          )
                      ),
                      Center(
                          child: Text(HomeStringConstants.comingSoonText,
                            style: TextStyle(
                                color: AppColors.darkGray,
                                fontSize: 16,
                                fontFamily: customFontFamily,
                                fontWeight: FontWeight.w600
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
