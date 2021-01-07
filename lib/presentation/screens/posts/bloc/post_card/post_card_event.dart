part of 'post_card_bloc.dart';

@immutable
abstract class PostCardEvent extends BaseEvent {}

@immutable
class PostCardInitialEvent extends BaseEvent {}

class GetPostCommentsEvent extends PostCardEvent {
  GetPostCommentsEvent(this.postId);

  final int postId;
}
