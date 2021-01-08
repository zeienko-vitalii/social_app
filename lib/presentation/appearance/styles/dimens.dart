import 'package:flutter_screenutil/flutter_screenutil.dart';

// Icon sizes
double get iconSize_24 => _getAdjustedSize(24);
double get iconSize_48 => _getAdjustedSize(48);

// Text sizes
double get textSize_12 => _getAdjustedSize(12);
double get textSize_14 => _getAdjustedSize(14);
double get textSize_15 => _getAdjustedSize(15);
double get textSize_16 => _getAdjustedSize(16);
double get textSize_24 => _getAdjustedSize(24);

// when building textTheme data, ScreenUtil() is null
double _getAdjustedSize(double iconSize) => ScreenUtil()?.setSp(iconSize);
