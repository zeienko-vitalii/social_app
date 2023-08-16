import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/utility/logger/logger_service.dart';

part 'post_bloc.freezed.dart';
part 'post_state.dart';

class PostBloc extends Cubit<PostState> {
  PostBloc(
    this.api,
    this.user,
  ) : super(const PostState.initial());

  final User? user;
  final Api api;

  Future<void> getPosts() async {
    try {
      if (user == null) throw Exception('User id is null');

      final container = await api.getPostsByUserId(user!.id);
      if (container == null) throw Exception('Container is null');

      emit(
        PostState.getPost(container),
      );
    } catch (e, stk) {
      Log().e(e, stk);

      emit(
        PostState.error(e.toString()),
      );
    }
  }
}
