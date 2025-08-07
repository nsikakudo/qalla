import 'package:auto_route/auto_route.dart';
import '../../../../presentation/home/pages/qalla_home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: QallaHomeRoute.page, initial: true),
  ];
}