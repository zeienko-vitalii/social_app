import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:social_app_demo/data/net/models/api/api_response.dart';

typedef LogCallback = void Function([Object error, StackTrace? stackTrace]);

class DioClient {
  factory DioClient() {
    if (_instance == null) {
      throw Exception('Use DioClient.init(...) before accesing it.');
    }
    return _instance!;
  }

  DioClient.init(
    String baseUrl, {
    Map<String, String>? headerParams,
    this.logError,
    this.logDebugMessage,
  }) {
    if (_instance == null) {
      _client.applyDefaultOptions(baseUrl, headerParams: headerParams);
      _instance = this;
    }
  }

  static DioClient? _instance;
  late final Dio _client = Dio();
  final LogCallback? logError;
  final LogCallback? logDebugMessage;

  void dispose() {
    _client.close();
  }

  Future<ApiResponse> download(String urlPath, String savePath) async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/$savePath';
    try {
      final response = await _client.download(urlPath, path);
      return ApiResponse(response);
    } on DioException catch (e) {
      return Future<ApiResponse>.error(_getAndPrintHttpError(e));
    }
  }

  Future<ApiResponse?> httpCall(
    String path,
    HttpMethod httpMethod, {
    FormData? formData,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response<dynamic> response;

      final pathWithBase = _client.options.baseUrl + path;

      switch (httpMethod) {
        case HttpMethod.get:
          response = await _client.get<dynamic>(
            pathWithBase,
            queryParameters: queryParameters,
          );
        case HttpMethod.post:
          response = await _client.post<dynamic>(
            pathWithBase,
            data: formData ?? data,
            queryParameters: queryParameters,
          );
        case HttpMethod.patch:
          response = await _client.patch<dynamic>(
            pathWithBase,
            data: formData ?? data,
          );
        case HttpMethod.delete:
          response = await _client.delete<dynamic>(
            pathWithBase,
            queryParameters: queryParameters,
          );
        case HttpMethod.put:
          response = await _client.put<dynamic>(
            pathWithBase,
            queryParameters: queryParameters,
            data: formData ?? data,
          );
      }
      _logResponse(response);
      return ApiResponse(response);
    } on DioException catch (e, stk) {
      return Future<ApiResponse>.error(_getAndPrintHttpError(e, stk));
    } catch (e, stk) {
      logError?.call(e, stk);
      return Future<ApiResponse>.error(
        ApiError(
          RequestOptions(
            path: path,
            method: httpMethod.toString(),
          ),
        ),
      );
    }
  }

  ApiError _getAndPrintHttpError(DioException e, [StackTrace? stk]) {
    final ex = ApiError.fromDioException(e);
    logError?.call(ex, stk);
    return ex;
  }

  void _logResponse(Response<dynamic>? response) {
    logDebugMessage?.call('Response: $response');
  }
}

enum HttpMethod { get, post, patch, delete, put }

extension DioConfiguration on Dio {
  void applyDefaultOptions(
    String baseUrlStr, {
    ContentType? type,
    Map<String, String>? headerParams,
  }) {
    headerParams?.forEach((String key, String value) {
      options.headers[key] = value;
    });
    options
      ..baseUrl = baseUrlStr
      ..contentType = (type?.toString() ?? ContentType.json.toString())
      ..connectTimeout = const Duration(seconds: 20)
      ..receiveTimeout = const Duration(seconds: 60)
      ..validateStatus = (int? status) => status == 200;
  }
}
