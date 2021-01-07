import 'package:flutter/material.dart';
import 'package:social_app_demo/presentation/appearance/route_transition/slide_to_left_route.dart';
import 'package:social_app_demo/presentation/appearance/route_transition/slide_to_right_route.dart';
import 'package:social_app_demo/presentation/appearance/route_transition/slide_to_top_route.dart';
import 'package:social_app_demo/presentation/screens/main/main_screen.dart';
import 'package:social_app_demo/presentation/screens/posts/posts_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainScreen.path:
        return _slideToRightRouteToScreen(const MainScreen(), settings);
      case PostsScreen.path:
        return _slideToLeftRouteToScreen(const PostsScreen(), settings);
      default:
        return _materialRouteToScreen(const MainScreen());
    }
  }

  static Route<dynamic> _materialRouteToScreen(Widget screen, [RouteSettings settings]) => MaterialPageRoute<dynamic>(
        builder: (_) => screen,
        settings: settings,
      );

  static PageRoute<dynamic> _slideToLeftRouteToScreen(Widget screen, [RouteSettings settings]) => SlideToLeftRoute(
        builder: (_) => screen,
        settings: settings,
      );

  static PageRoute<dynamic> _slideToTopRouteToScreen(Widget screen, [RouteSettings settings]) => SlideToTopRoute(
        builder: (_) => screen,
        settings: settings,
      );

  static PageRoute<dynamic> _slideToRightRouteToScreen(Widget screen, [RouteSettings settings]) => SlideToRightRoute(
        builder: (_) => screen,
        settings: settings,
      );
}
