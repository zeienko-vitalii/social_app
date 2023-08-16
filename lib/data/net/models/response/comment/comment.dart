import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.g.dart';
part 'comment.freezed.dart';

@freezed
class CommentContainer with _$CommentContainer {
  const factory CommentContainer({
    @Default(<Comment>[]) List<Comment> comments,
  }) = _CommentContainer;

  factory CommentContainer.fromJson(Map<String, dynamic> json) =>
      _$CommentContainerFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int postId,
    required int id,
    String? name,
    String? body,
    String? email,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
