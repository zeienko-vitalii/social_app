import 'package:flutter/material.dart';

class HeroAnimUtility {
  static const String userTag = 'userTag';

  static String tag(String id, {String? mark = userTag}) => '$id-${mark ?? ''}';

  static Widget heroWrap(Widget child, String tag) {
    return Hero(
      tag: tag,
      child: Material(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
