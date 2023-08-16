part of 'post_card_bloc.dart';

@freezed
class PostCardState {
  const factory PostCardState.initial() = PostCardInitial;
  const factory PostCardState.loading() = PostCardLoading;
  const factory PostCardState.finishLoading() = PostCardLoadingFinished;
  const factory PostCardState.getComments(CommentContainer commentContainer) =
      GetCommentsState;
  const factory PostCardState.error([String? msg]) = PostCardError;
}
