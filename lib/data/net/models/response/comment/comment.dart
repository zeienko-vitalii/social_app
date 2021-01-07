import 'package:social_app_demo/data/net/models/response/json_convertible.dart';

class CommentContainer {
  CommentContainer.fromJsonList(List<dynamic> data)
      : comments = List<Comment>.from(
          data
                  ?.map<Comment>(
                    (dynamic e) => Comment.fromJson(
                      Map<String, dynamic>.from(e),
                    ),
                  )
                  ?.toList() ??
              const <Comment>[],
        );

  final List<Comment> comments;
}

class Comment extends ApiJsonConvertible {
  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'],
        super.fromJson(json);
  final int postId, id;
  final String name, email, body;
}
