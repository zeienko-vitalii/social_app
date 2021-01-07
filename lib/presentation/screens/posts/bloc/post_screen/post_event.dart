part of 'post_bloc.dart';

@immutable
abstract class PostEvent extends BaseEvent {}

class GetAllPostsEvent extends PostEvent {}
