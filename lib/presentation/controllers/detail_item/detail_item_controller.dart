import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:demo_getx_flutter/utils/base/page_state.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  Rx<PageState> pageState = PageState.initial.obs;
  Rx<WeatherResponse> weather = WeatherResponse().obs;

  @override
  void onInit() {
    Init();
    super.onInit();
  }

  void getWeather() {
    pageState.value = PageState.loading;
    final _location = Get.arguments["data"];
    weather.value = _location;
    pageState.value = PageState.success;
  }

  Future<void> Init() async {
    getWeather();
    // await Future.wait([getWeather(_location)]);
  }
}
