import 'package:social_app_demo/data/net/client/dio_client.dart';
import 'package:social_app_demo/data/net/models/api/api_response.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';

import 'api.dart';
import 'api_queries.dart';

class ApiImpl extends Api {
  factory ApiImpl() {
    if (_instance == null) {
      throw Exception('Use ApiImpl.init(...) before accesing it.');
    }
    return _instance;
  }

  ApiImpl.init() {
    if (_instance == null) {
      _dioClient = DioClient.init(BASE_URL);
      _instance = this;
    }
  }

  static ApiImpl _instance;
  static DioClient _dioClient;

  @override
  Future<UserContainer> getUsers() async => _dioClient.httpCall(getUsersRequest, HTTP_METHOD.GET).then(
        (ApiResponse response) => response?.hasResult ?? false ? UserContainer.fromJsonList(response.dataList) : null,
      );

  @override
  Future<PostContainer> getPostsByUserId(int userId) => _dioClient.httpCall(
        getPostsByUserIdRequest,
        HTTP_METHOD.GET,
        queryParameters: <String, dynamic>{'userId': userId},
      ).then(
        (ApiResponse response) => response?.hasResult ?? false ? PostContainer.fromJsonList(response.dataList) : null,
      );

  @override
  Future<CommentContainer> getCommentsByPostId(int postId) => _dioClient.httpCall(
        getCommentsByPostIdRequest,
        HTTP_METHOD.GET,
        queryParameters: <String, dynamic>{'postId': postId},
      ).then(
        (ApiResponse response) =>
            response?.hasResult ?? false ? CommentContainer.fromJsonList(response.dataList) : null,
      );
}
