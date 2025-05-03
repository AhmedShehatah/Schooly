import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../assets/assets.gen.dart';
import '../../theme/palette.dart';

class CustomImage extends StatelessWidget {
  final double cornerRadius;
  final Color? color;
  final double? width;
  final double? height;
  final String? imagePath;
  final Widget? imageAsset;
  final Widget? placeHolder;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final bool hasBorder;
  final bool isImageFile;
  final File? file;
  final Border? border;
  final BoxShadow? shadow;
  final BoxFit? boxFit;
  final EdgeInsets? padding;
  final bool isOnline;
  final Color? borderColor;

  const CustomImage._({
    required this.cornerRadius,
    this.imagePath,
    this.imageAsset,
    this.backgroundColor,
    this.isImageFile = false,
    this.file,
    this.color,
    this.width,
    this.boxFit,
    this.height,
    this.placeHolder,
    this.isNetworkImage = true,
    this.shadow,
    this.hasBorder = false,
    this.isOnline = false,
    this.border,
    this.padding,
    this.borderColor,
  });

  factory CustomImage.circular({
    required double radius,
    String? image,
    Widget? placeHolder,
    BoxShadow? shadow,
    Widget? imageFile,
    BoxFit? boxFit,
    Color? backgroundColor,
    Color? color,
    EdgeInsets? padding,
    bool hasBorder = false,
    isNetworkImage = true,
    isImageFile = false,
    file,
    bool isOnline = false,
    Color? borderColor,
    Border? border,
  }) =>
      CustomImage._(
        imagePath: image,
        cornerRadius: radius,
        height: radius,
        width: radius,
        boxFit: boxFit,
        file: file,
        isImageFile: isImageFile,
        color: color,
        backgroundColor: backgroundColor,
        imageAsset: imageFile,
        isNetworkImage: isNetworkImage,
        placeHolder: placeHolder,
        shadow: shadow,
        hasBorder: hasBorder,
        border: border,
        isOnline: isOnline,
        padding: padding,
        borderColor: borderColor,
      );

  factory CustomImage.rectangle({
    double cornerRadius = 0.0,
    String? image,
    double? width,
    double? height,
    Widget? placeHolder,
    BoxShadow? shadow,
    BoxFit? boxFit,
    Widget? imageFile,
    Color? backgroundColor,
    Color? color,
    isImageFile = false,
    file,
    bool hasBorder = false,
    bool isOnline = false,
    isNetworkImage = true,
    EdgeInsets? padding,
    Color? borderColor,
  }) =>
      CustomImage._(
        imagePath: image,
        cornerRadius: cornerRadius,
        height: height,
        width: width,
        boxFit: boxFit,
        color: color,
        backgroundColor: backgroundColor,
        isNetworkImage: isNetworkImage,
        placeHolder: placeHolder,
        shadow: shadow,
        imageAsset: imageFile,
        file: file,
        isImageFile: isImageFile,
        padding: padding,
        isOnline: isOnline,
        hasBorder: hasBorder,
        borderColor: borderColor,
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image with border and other properties
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: width,
          height: height,
          decoration: BoxDecoration(
              boxShadow: shadow == null ? [] : [shadow!],
              border: !(hasBorder == true)
                  ? Border.all(color: Colors.transparent, width: 0.0)
                  : border ??
                      Border.all(
                          color: borderColor ??
                              Palette.primary.color6.withOpacity(0.7),
                          width: 0.7),
              borderRadius: BorderRadius.circular(cornerRadius),
              color: backgroundColor),
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(cornerRadius),
              child: isImageFile
                  ? _buildImageFile()
                  : _buildNetworkOrAssetsImage(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLocalImage() {
    return imageAsset ?? Assets.images.profile.image();
  }

  Image _buildImageFile() {
    if (file == null) return Assets.images.profile.image();
    return Image.file(
      file!,
      fit: boxFit ?? BoxFit.cover,
      color: color,
    );
  }

  CachedNetworkImage _buildNetworkImage() {
    return CachedNetworkImage(
      imageUrl: imagePath ?? '',
      placeholder: (context, url) =>
          placeHolder ?? Assets.images.profile.image(),
      errorWidget: (context, url, error) =>
          placeHolder ?? Assets.images.profile.image(),
      errorListener: (e) {},
      width: width,
      height: height,
      fit: boxFit ?? BoxFit.cover,
    );
  }

  dynamic _buildNetworkOrAssetsImage() {
    final isNetwork = ((imagePath?.isNotEmpty ?? false) &&
            (imagePath?.startsWith('http') ?? false) ||
        (imagePath?.startsWith('https') ?? false));

    final isAssetImage = imageAsset != null;
    if (isNetwork) return _buildNetworkImage();
    if (isAssetImage) return _buildLocalImage();
    if (placeHolder != null) return placeHolder;
    return Assets.images.profile.image();
  }
}
