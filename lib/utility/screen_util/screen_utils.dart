import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool _kIsTablet;

Size _getLogicalSize() {
  final double devicePixelRatio = ui.window.devicePixelRatio;
  return ui.window.physicalSize / devicePixelRatio;
}

bool _getIsTablet(Size windowLogicalSize) {
  return min(windowLogicalSize.width, windowLogicalSize.height) >= 600;
}

void initScreenUtil(BuildContext context) {
  final Size windowLogicalSize = _getLogicalSize();
  _kIsTablet = _getIsTablet(windowLogicalSize);
  final double screenWidth = windowLogicalSize.width;
  final double screenHeight = windowLogicalSize.height;
  final bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
  double uiWidth = 1080;
  if (_kIsTablet) {
    if (isLandscape) {
      uiWidth /= 1.2;
    } else {
      uiWidth /= 2;
    }
  } else {
    uiWidth /= 3;
  }
  final double uiHeightScaled = screenHeight * (uiWidth / screenWidth);
  //If you want to set the font size is scaled according to the system's "font size" assist option
  ScreenUtil.init(BoxConstraints(maxWidth: uiWidth, maxHeight: uiHeightScaled), allowFontScaling: true);
}
