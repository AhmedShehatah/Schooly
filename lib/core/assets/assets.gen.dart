/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Inbox.svg
  SvgGenImage get inbox => const SvgGenImage('assets/icons/Inbox.svg');

  /// File path: assets/icons/ar.svg
  SvgGenImage get ar => const SvgGenImage('assets/icons/ar.svg');

  /// File path: assets/icons/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icons/bell.svg');

  /// File path: assets/icons/dots-horizontal-24 px.svg
  SvgGenImage get dotsHorizontal24Px =>
      const SvgGenImage('assets/icons/dots-horizontal-24 px.svg');

  /// File path: assets/icons/dots.svg
  SvgGenImage get dots => const SvgGenImage('assets/icons/dots.svg');

  /// File path: assets/icons/download.svg
  SvgGenImage get download => const SvgGenImage('assets/icons/download.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/homework_file.svg
  SvgGenImage get homeworkFile =>
      const SvgGenImage('assets/icons/homework_file.svg');

  /// File path: assets/icons/left_arrow.svg
  SvgGenImage get leftArrow => const SvgGenImage('assets/icons/left_arrow.svg');

  /// File path: assets/icons/more.svg
  SvgGenImage get more => const SvgGenImage('assets/icons/more.svg');

  /// File path: assets/icons/notebook.svg
  SvgGenImage get notebook => const SvgGenImage('assets/icons/notebook.svg');

  /// File path: assets/icons/object.svg
  SvgGenImage get object => const SvgGenImage('assets/icons/object.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/slider-3-horizontal.svg
  SvgGenImage get slider3Horizontal =>
      const SvgGenImage('assets/icons/slider-3-horizontal.svg');

  /// File path: assets/icons/table.svg
  SvgGenImage get table => const SvgGenImage('assets/icons/table.svg');

  /// File path: assets/icons/us.svg
  SvgGenImage get us => const SvgGenImage('assets/icons/us.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        inbox,
        ar,
        bell,
        dotsHorizontal24Px,
        dots,
        download,
        home,
        homeworkFile,
        leftArrow,
        more,
        notebook,
        object,
        settings,
        slider3Horizontal,
        table,
        us
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arabic.jpg
  AssetGenImage get arabic => const AssetGenImage('assets/images/arabic.jpg');

  /// File path: assets/images/atom.png
  AssetGenImage get atom => const AssetGenImage('assets/images/atom.png');

  /// File path: assets/images/back.png
  AssetGenImage get back => const AssetGenImage('assets/images/back.png');

  /// File path: assets/images/hero.png
  AssetGenImage get hero => const AssetGenImage('assets/images/hero.png');

  /// File path: assets/images/login.png
  AssetGenImage get login => const AssetGenImage('assets/images/login.png');

  /// File path: assets/images/math.png
  AssetGenImage get math => const AssetGenImage('assets/images/math.png');

  /// File path: assets/images/post.png
  AssetGenImage get post => const AssetGenImage('assets/images/post.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile_post.png
  AssetGenImage get profilePost =>
      const AssetGenImage('assets/images/profile_post.png');

  /// File path: assets/images/religion.jpg
  AssetGenImage get religion =>
      const AssetGenImage('assets/images/religion.jpg');

  /// File path: assets/images/science.jpg
  AssetGenImage get science => const AssetGenImage('assets/images/science.jpg');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/studies.jpg
  AssetGenImage get studies => const AssetGenImage('assets/images/studies.jpg');

  /// File path: assets/images/teacher.png
  AssetGenImage get teacher => const AssetGenImage('assets/images/teacher.png');

  /// File path: assets/images/three_point.png
  AssetGenImage get threePoint =>
      const AssetGenImage('assets/images/three_point.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        arabic,
        atom,
        back,
        hero,
        login,
        math,
        post,
        profile,
        profilePost,
        religion,
        science,
        splash,
        studies,
        teacher,
        threePoint
      ];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
