import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:demo_getx_flutter/domain/repositories/repository.dart';
import 'package:demo_getx_flutter/utils/network/result.dart';

abstract class WeatherRepository extends BaseRepository {
  Future<Result<WeatherResponse>> GetWeather({required String location});
}
