import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_screen/post_bloc.dart';

import 'component/posts_component.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen();

  static const String path = '/postsScreen';
  static const String _userIdKey = '_userIdKey';

  static Map<String, dynamic> setArguments(User user) => <String, dynamic>{
        _userIdKey: user,
      };

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return BlocProvider<PostBloc>(
      create: (BuildContext context) => PostBloc(args != null ? args[_userIdKey] : null),
      child: const PostsComponent(),
    );
  }
}
