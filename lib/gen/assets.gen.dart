/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cloud-full.jpg
  AssetGenImage get cloudFull =>
      const AssetGenImage('assets/images/cloud-full.jpg');

  /// File path: assets/images/cloudy.jpg
  AssetGenImage get cloudy => const AssetGenImage('assets/images/cloudy.jpg');

  /// File path: assets/images/rain-full.jpg
  AssetGenImage get rainFull =>
      const AssetGenImage('assets/images/rain-full.jpg');

  /// File path: assets/images/rain.jpg
  AssetGenImage get rain => const AssetGenImage('assets/images/rain.jpg');

  /// File path: assets/images/storm-full.jpg
  AssetGenImage get stormFull =>
      const AssetGenImage('assets/images/storm-full.jpg');

  /// File path: assets/images/storm.jpg
  AssetGenImage get storm => const AssetGenImage('assets/images/storm.jpg');

  /// File path: assets/images/sunny-full.jpeg
  AssetGenImage get sunnyFull =>
      const AssetGenImage('assets/images/sunny-full.jpeg');

  /// File path: assets/images/sunny.jpg
  AssetGenImage get sunny => const AssetGenImage('assets/images/sunny.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cloudFull, cloudy, rainFull, rain, stormFull, storm, sunnyFull, sunny];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/cloud-rain-icon.svg
  SvgGenImage get cloudRainIcon =>
      const SvgGenImage('assets/svg/cloud-rain-icon.svg');

  /// File path: assets/svg/cloud-snow-lightning-icon.svg
  SvgGenImage get cloudSnowLightningIcon =>
      const SvgGenImage('assets/svg/cloud-snow-lightning-icon.svg');

  /// File path: assets/svg/cloudy-icon.svg
  SvgGenImage get cloudyIcon => const SvgGenImage('assets/svg/cloudy-icon.svg');

  /// File path: assets/svg/day-sunny-icon.svg
  SvgGenImage get daySunnyIcon =>
      const SvgGenImage('assets/svg/day-sunny-icon.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [cloudRainIcon, cloudSnowLightningIcon, cloudyIcon, daySunnyIcon];
}

class Assets {
  Assets._();

  static const AssetGenImage cleanArchitecture =
      AssetGenImage('assets/CleanArchitecture.jpg');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();

  /// List of all assets
  List<AssetGenImage> get values => [cleanArchitecture];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
