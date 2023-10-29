import 'package:demo_getx_flutter/data/responsity/weather/weather_repository_impl.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:demo_getx_flutter/utils/base/page_state.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<PageState> pageState = PageState.initial.obs;
  RxString searchObs = ''.obs;
  RxList<WeatherResponse> weather = <WeatherResponse>[].obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onSearchChange(String search) {
    searchObs.value = search;
    if (search == "" && weather.length > 3) {
      final List<WeatherResponse> _ls = weather.toList();
      weather.value = _ls..removeAt(0);
    }
    return;
  }

  Future<void> onSearchIconClick(String search) async {
    await getWeather(search);
    return;
  }

  void onItemSelect(WeatherResponse data) {
    Get.toNamed('/detail_item', arguments: {"data": data});
  }

  Future<void> getWeather(String location) async {
    pageState.value = PageState.loading;
    final result = await WeatherRepositoryImpl().GetWeather(location: location);

    await result.when(success: (data) async {
      weather.insert(0, data);
    }, error: (errorMessage, code) async {
      print(errorMessage);
    });
    pageState.value = PageState.success;
  }

  Future<void> init() async {
    await Future.wait([
      getWeather("Vietnam"),
      getWeather("USA"),
      getWeather("Australia"),
    ]);
  }
}
