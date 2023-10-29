import 'package:demo_getx_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

enum Weather {
  Sunny,
  Rain,
  Cloudy,
  Storm,
}

extension WeatherExt on Weather {
  String get name {
    switch (this) {
      case Weather.Sunny:
        return 'Sunny';
      case Weather.Cloudy:
        return 'Cloudy';
      case Weather.Rain:
        return 'Rain';
      case Weather.Storm:
        return 'Storm';
    }
  }

  ImageProvider get image {
    switch (this) {
      case Weather.Sunny:
        return Assets.images.sunny.provider();
      case Weather.Cloudy:
        return Assets.images.cloudy.provider();
      case Weather.Rain:
        return Assets.images.rain.provider();
      case Weather.Storm:
        return Assets.images.storm.provider();
    }
  }

  Widget get icon {
    switch (this) {
      case Weather.Sunny:
        return Assets.svg.daySunnyIcon.svg(
          height: 20,
          width: 20,
          color: Colors.amber,
        );
      case Weather.Cloudy:
        return Assets.svg.cloudyIcon.svg(
          height: 20,
          width: 20,
          color: Colors.white,
        );
      case Weather.Rain:
        return Assets.svg.cloudRainIcon.svg(
          height: 20,
          width: 20,
          color: Colors.grey,
        );
      case Weather.Storm:
        return Assets.svg.cloudSnowLightningIcon.svg(
          height: 20,
          width: 20,
          color: Colors.blueGrey,
        );
    }
  }
}

Weather getWeatherType(String type) {
  if (type.contains(Weather.Sunny.name)) {
    return Weather.Sunny;
  }
  if (type.contains(Weather.Cloudy.name)) {
    return Weather.Cloudy;
  }
  if (type.contains(Weather.Storm.name)) {
    return Weather.Storm;
  }
  if (type.contains(Weather.Rain.name)) {
    return Weather.Rain;
  }
  return Weather.Cloudy;
}

double getCelsius(double value) {
  final _value = double.parse(((value - 32.0) * 5 / 9).toStringAsFixed(1));

  return _value;
}
