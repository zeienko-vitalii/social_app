part of 'post_bloc.dart';

@immutable
abstract class PostState extends BaseBlocState {}

class PostInitial extends PostState {}

class GetPostsState extends PostState {
  GetPostsState(this.postContainer);

  final PostContainer postContainer;
}
