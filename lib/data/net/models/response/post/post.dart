import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class PostContainer with _$PostContainer {
  const factory PostContainer({
    required List<Post> posts,
  }) = _PostContainer;

  factory PostContainer.fromJson(Map<String, dynamic> json) =>
      _$PostContainerFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    required int userId,
    required int id,
    String? title,
    String? body,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
