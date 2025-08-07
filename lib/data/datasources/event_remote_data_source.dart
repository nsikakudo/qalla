import 'package:dio/dio.dart';
import '../../core/error/exceptions.dart';
import '../../core/services/apiServices/home_api_service.dart';
import '../remote/home/eventModel/event_model.dart';

abstract class EventRemoteDataSource {
  Future<EventResponseModel> getPublicEvents({
    required int page,
    String? keyword,
    String? category,
  });
}
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final ApiService apiService;
  EventRemoteDataSourceImpl(this.apiService);
  @override
  Future<EventResponseModel> getPublicEvents({
    required int page,
    String? keyword,
    String? category,
  }) async {
    try {
      final bool? isTrending = category == 'Trending' ? true : null;
      final String? apiCategory = (category != 'Trending' && category != 'All') ? category : null;
      return await apiService.getPublicEvents(
        page: page,
        keyword: keyword,
        category: apiCategory,
        trending: isTrending,
      );
    } on DioException catch (e) {
      throw ServerException('Failed to fetch data from server: ${e.message}');
    } catch (e) {
      throw ServerException('An unknown error occurred: ${e.toString()}');
    }
  }
}