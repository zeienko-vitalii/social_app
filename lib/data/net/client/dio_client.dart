import 'dart:io';

import 'package:dio/dio.dart';
import 'package:social_app_demo/data/net/models/api/api_response.dart';
import 'package:social_app_demo/utility/logger/logger_service.dart';

/// Keeps Dio client and provides functionality to make network requests
class DioClient {
  factory DioClient() {
    if (_instance == null) {
      throw Exception('Use DioClient.init(...) before accesing it.');
    }
    return _instance;
  }

  DioClient.init(String baseUrl) {
    if (_instance == null) {
      _instance = this;
      _client = Dio();
      _client.options.baseUrl = baseUrl;
      _client.options.contentType = ContentType.json.toString();
      _client.options.headers['Accept'] = ContentType.json.toString();
      _client.options.connectTimeout = 10000; //10s
      _client.options.receiveTimeout = 20000; // 20s
    }
  }

  static DioClient _instance;
  Dio _client;

  Future<ApiResponse> httpCall(
    String path,
    HTTP_METHOD httpMethod, {
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> data,
    FormData formData,
  }) async {
    try {
      Response<dynamic> response;
      switch (httpMethod) {
        case HTTP_METHOD.GET:
          response = await _client.get<dynamic>(path, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.POST:
          response = await _client.post<dynamic>(path, data: formData ?? data, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.PATCH:
          response = await _client.patch<dynamic>(path, data: formData ?? data);
          break;
        case HTTP_METHOD.DELETE:
          response = await _client.delete<dynamic>(path, queryParameters: queryParameters);
          break;
        case HTTP_METHOD.PUT:
          response = await _client.put<dynamic>(path, queryParameters: queryParameters, data: formData ?? data);
          break;
      }
      response.log();
      return ApiResponse(response);
    } on DioError catch (e) {
      return Future<ApiResponse>.error(_getAndPrintHttpError(e: e));
    }
  }

  ApiError _getAndPrintHttpError({DioError e}) {
    final ApiError ex = ApiError.fromDioError(e);
    Log().e(ex);
    return ex;
  }
}

enum HTTP_METHOD { GET, POST, PATCH, DELETE, PUT }

extension LogResponse on Response<dynamic> {
  void log() {
    final String requestString = 'path: ${request.path}, '
        'httpMethod: ${request.method}, '
        'queryParameters: ${request.queryParameters.toString()}, '
        'data: ${request.data.toString()}';
    Log().d('request: $requestString, response: ${toString()}');
  }
}
