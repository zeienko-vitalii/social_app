import 'package:flutter/material.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/screens/posts/posts_screen.dart';

class NavigatorUtils {
  static void goBack(BuildContext context) {
    if (context.navigator.canPop()) {
      context.navigator.pop();
    }
  }

  static dynamic goToPostsScreen(BuildContext context, User user) {
    return context.navigator.pushNamed(PostsScreen.path, arguments: PostsScreen.setArguments(user));
  }
}

extension NavigatorExt on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}
