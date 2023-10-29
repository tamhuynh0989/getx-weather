import 'package:demo_getx_flutter/data/remotes/base/base_dio.dart';
import 'package:demo_getx_flutter/data/remotes/weather/weather_api_client.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:demo_getx_flutter/domain/repositories/repository.dart';
import 'package:demo_getx_flutter/utils/network/result.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  @override
  Future<Result<WeatherResponse>> GetWeather({required String location}) async {
    final clientResult =
        WeatherApiClient(await BaseDio.getInstance().getBaseDio());
    return safeCall(clientResult.getWeather(
      'ER8YL5LR6XXRRN7ZELE5YCAYU',
      location,
      'next7days',
      'days,alerts,current,events,hours',
    ));
  }
}
