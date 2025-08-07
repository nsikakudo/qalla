import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../app/config/appWidgets/appRouterHandler/app_router.dart';
import '../../app/config/theme/theme_cubit.dart';
import '../../data/datasources/event_local_data_source.dart';
import '../../data/datasources/event_remote_data_source.dart';
import '../../data/repositories/event_repository_impl.dart';
import '../../domain/repositories/event_repository.dart';
import '../../domain/usecases/get_public_events.dart';
import '../../presentation/home/bloc/event_bloc.dart';
import '../db/app_database.dart';
import '../network/dioClient/dio_client.dart';
import '../network/network_info.dart';
import '../services/apiServices/home_api_service.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerFactory(() => EventBloc(getPublicEvents: locator()));
  locator.registerFactory(() => ThemeCubit(locator()));
  locator.registerLazySingleton(() => GetPublicEvents(locator()));
  locator.registerLazySingleton<EventRepository>(
        () => EventRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
      networkInfo: locator(),
    ),
  );
  locator.registerLazySingleton<EventRemoteDataSource>(() => EventRemoteDataSourceImpl(locator()));
  locator.registerLazySingleton<EventLocalDataSource>(() => EventLocalDataSourceImpl(locator()));
  locator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(locator()));
  locator.registerLazySingleton(() => DioClient.create());
  locator.registerLazySingleton(() => ApiService(locator()));
  locator.registerLazySingleton(() => AppDatabase());
  locator.registerLazySingleton(() => AppRouter());
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
  locator.registerLazySingleton(() => Connectivity());
}