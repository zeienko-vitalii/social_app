import 'package:flutter/material.dart';
import 'package:social_app_demo/presentation/screens/main/main_screen.dart';
import 'package:social_app_demo/presentation/screens/posts/posts_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainScreen.path:
        return _materialRouteToScreen(const MainScreen(), settings);
      case PostsScreen.path:
        return _materialRouteToScreen(const PostsScreen(), settings);
      default:
        return _materialRouteToScreen(const MainScreen());
    }
  }

  static Route<dynamic> _materialRouteToScreen(Widget screen, [RouteSettings settings]) => MaterialPageRoute<dynamic>(
        builder: (_) => screen,
        settings: settings,
      );
}
