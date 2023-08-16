import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/api/api_queries.dart';
import 'package:social_app_demo/data/net/client/dio_client.dart';
import 'package:social_app_demo/data/net/models/api/api_response.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';

class ApiImpl extends Api {
  factory ApiImpl() {
    if (_instance == null) {
      throw Exception('Use ApiImpl.init(...) before accesing it.');
    }
    return _instance!;
  }

  ApiImpl.init() {
    if (_instance == null) {
      _dioClient = DioClient.init(baseUrl);
      _instance = this;
    }
  }

  static ApiImpl? _instance;
  static late DioClient _dioClient;

  @override
  Future<UserContainer?> getUsers() async =>
      _dioClient.httpCall(getUsersRequest, HttpMethod.get).then(
            (
              ApiResponse? response,
            ) =>
                (response?.hasDataMap ?? false)
                    ? UserContainer.fromJson(response!.dataMap!)
                    : null,
          );

  @override
  Future<PostContainer?> getPostsByUserId(int userId) => _dioClient.httpCall(
        getPostsByUserIdRequest,
        HttpMethod.get,
        queryParameters: <String, dynamic>{'userId': userId},
      ).then(
        (ApiResponse? response) => response?.hasDataMap ?? false
            ? PostContainer.fromJson(response!.dataMap!)
            : null,
      );

  @override
  Future<CommentContainer?> getCommentsByPostId(int postId) =>
      _dioClient.httpCall(
        getCommentsByPostIdRequest,
        HttpMethod.get,
        queryParameters: <String, dynamic>{'postId': postId},
      ).then(
        (ApiResponse? response) => response?.hasDataMap ?? false
            ? CommentContainer.fromJson(response!.dataMap!)
            : null,
      );
}
