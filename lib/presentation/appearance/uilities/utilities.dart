import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';

SvgPicture svgAsset(
  String path, {
  double size,
  double width,
  double height,
  Color color,
  bool matchTextDirection,
  Key key,
}) {
  final double defaultIconSize = iconSize_24;
  return SvgPicture.asset(
    path,
    key: key,
    width: size ?? width ?? defaultIconSize,
    height: size ?? height ?? width ?? defaultIconSize,
    color: color,
    matchTextDirection: matchTextDirection ?? false,
  );
}
