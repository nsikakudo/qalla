import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/config/appWidgets/appRouterHandler/app_router.dart';
import 'app/config/theme/app_theme.dart';
import 'app/config/theme/theme_cubit.dart';
import 'core/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const QallaApp());
}

class QallaApp extends StatelessWidget {
  const QallaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = locator<AppRouter>();
    return BlocProvider(
      create: (_) => locator<ThemeCubit>()..loadTheme(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            title: 'Qalla',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
