enum Flavor {
  DEV,
  STAGING,
  PRODUCTION,
}

class F {
  static late Flavor appFlavor;

  static const SERVER_HOST = "";

  static String get title {
    switch (appFlavor) {
      case Flavor.STAGING:
        return 'Staging';
      case Flavor.PRODUCTION:
        return 'Production';
      case Flavor.DEV:
        return 'Develop';
    }
  }

  static String get name => appFlavor.name;

  static bool get isDev => appFlavor == Flavor.DEV;

  static bool get isProd => appFlavor == Flavor.PRODUCTION;

  static bool get isStg => appFlavor == Flavor.STAGING;

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.PRODUCTION:
        return SERVER_HOST;
      case Flavor.STAGING:
        return SERVER_HOST;
      case Flavor.DEV:
        return SERVER_HOST;
    }
  }
}
