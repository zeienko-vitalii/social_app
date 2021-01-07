import 'package:social_app_demo/data/net/models/response/json_convertible.dart';

class PostContainer {
  PostContainer.fromJsonList(List<dynamic> data)
      : posts = List<Post>.from(
          data
                  ?.map<Post>(
                    (dynamic e) => Post.fromJson(
                      Map<String, dynamic>.from(e),
                    ),
                  )
                  ?.toList() ??
              const <Post>[],
        );

  final List<Post> posts;
}

class Post extends ApiJsonConvertible {
  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'],
        super.fromJson(json);

  final int userId, id;
  final String title, body;
}
