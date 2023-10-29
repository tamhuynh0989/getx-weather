import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'weather_api_client.g.dart';

@RestApi(
    baseUrl:
        'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/')
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio) = _WeatherApiClient;

  @GET('timelinemulti')
  Future<WeatherResponse> getWeather(
    @Query('key') String key,
    @Query('locations') String locations,
    @Query('datestart') String datestart,
    @Query('include') String include,
  );
}
