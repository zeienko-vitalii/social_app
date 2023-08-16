import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';

abstract class Api {
  Future<UserContainer?> getUsers();
  Future<PostContainer?> getPostsByUserId(int userId);
  Future<CommentContainer?> getCommentsByPostId(int postId);
}
