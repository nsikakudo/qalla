import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../data/remote/home/eventModel/event_model.dart';
import '../endpoints.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(Endpoints.publicEvents)
  Future<EventResponseModel> getPublicEvents({
    @Query("page") int page = 1,
    @Query("size") int size = 10,
    @Query("keyword") String? keyword,
    @Query("category") String? category,
    @Query("trending") bool? trending,
  });
}