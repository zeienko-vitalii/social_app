import 'dart:async';

import 'package:meta/meta.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';

part 'post_card_event.dart';

part 'post_card_state.dart';

class PostCardBloc extends BaseBloc {
  @override
  Stream<BaseBlocState> mapChildEventToState(BaseEvent event) async* {
    if (event is GetPostCommentsEvent) {
      yield await _getComments(event.postId);
    } else if (event is PostCardInitialEvent) {
      yield FinishLoadingState();
    } else {
      yield LoadingState();
    }
  }

  Future<BaseBlocState> _getComments(int postId) {
    return api.getCommentsByPostId(postId).then((CommentContainer value) {
      return GetCommentsState(value);
    }).catchError(handleApiError);
  }
}
