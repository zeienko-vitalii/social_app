import 'package:flutter_screenutil/flutter_screenutil.dart';

// Icon sizes
double get iconSize_24 => _getAdjustedSize(24);
double get iconSize_48 => _getAdjustedSize(48);

// Text sizes
double get defaultTextSize => _getAdjustedSize(14);
double get extraLargeTextSize => _getAdjustedSize(44);
double get textSize_12 => _getAdjustedSize(12);
double get textSize_13 => _getAdjustedSize(13);
double get textSize_14 => _getAdjustedSize(14);
double get textSize_15 => _getAdjustedSize(15);
double get textSize_16 => _getAdjustedSize(16);
double get textSize_17 => _getAdjustedSize(17);
double get textSize_18 => _getAdjustedSize(18);
double get textSize_19 => _getAdjustedSize(19);

double get textSize_20 => _getAdjustedSize(20);
double get textSize_21 => _getAdjustedSize(21);
double get textSize_22 => _getAdjustedSize(22);
double get textSize_23 => _getAdjustedSize(23);
double get textSize_24 => _getAdjustedSize(24);
double get textSize_25 => _getAdjustedSize(25);
double get textSize_26 => _getAdjustedSize(26);
double get textSize_27 => _getAdjustedSize(27);
double get textSize_28 => _getAdjustedSize(28);
double get textSize_29 => _getAdjustedSize(29);

// when building textTheme data, ScreenUtil() is null
double _getAdjustedSize(double iconSize) => ScreenUtil()?.setSp(iconSize);
