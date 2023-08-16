import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/di/di.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_screen/post_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/component/posts_component.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  static const String path = '/postsScreen';
  static const String _userIdKey = '_userIdKey';

  static Map<String, dynamic> setArguments(User user) => <String, dynamic>{
        _userIdKey: user,
      };

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final user = args?[_userIdKey] as User?;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<PostCardBloc>(),
        ),
        BlocProvider<PostBloc>(
          create: (BuildContext context) => PostBloc(
            getIt<Api>(),
            user,
          ),
        ),
      ],
      child: const PostsComponent(),
    );
  }
}
