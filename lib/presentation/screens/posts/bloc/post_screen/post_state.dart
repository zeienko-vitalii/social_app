part of 'post_bloc.dart';

@freezed
class PostState {
  const factory PostState.initial() = PostInitial;
  const factory PostState.getPost(PostContainer container) = GetPostsState;
  const factory PostState.error([String? msg]) = PostError;
}
