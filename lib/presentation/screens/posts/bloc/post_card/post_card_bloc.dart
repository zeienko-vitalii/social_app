import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/utility/logger/logger_service.dart';

part 'post_card_bloc.freezed.dart';
part 'post_card_state.dart';

class PostCardBloc extends Cubit<PostCardState> {
  PostCardBloc(this.api) : super(const PostCardState.initial());

  final Api api;

  void finishLoading() {
    emit(
      const PostCardState.finishLoading(),
    );
  }

  Future<void> getComments(int postId) async {
    try {
      emit(const PostCardState.loading());
      final container = await api.getCommentsByPostId(postId);
      if (container == null) throw Exception('Container is null');

      emit(
        PostCardState.getComments(container),
      );
    } catch (e, stk) {
      Log().e(e, stk);

      emit(
        PostCardState.error(e.toString()),
      );
    }
  }
}
