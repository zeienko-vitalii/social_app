part of 'post_card_bloc.dart';

@immutable
abstract class PostCardState extends BaseBlocState {}

class PostCardInitial extends PostCardState {}

class GetCommentsState extends PostCardState {
  GetCommentsState(this.commentContainer);

  final CommentContainer commentContainer;
}
