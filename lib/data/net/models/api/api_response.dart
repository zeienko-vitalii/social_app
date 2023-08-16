import 'dart:io';

import 'package:dio/dio.dart';

class ApiResponse {
  ApiResponse(Response<dynamic> r)
      : _data = r.data,
        _request = r.requestOptions;

  final dynamic _data;
  final RequestOptions _request;

  bool get hasDataList => dataList?.isNotEmpty ?? false;

  bool get hasDataMap => dataMap?.isNotEmpty ?? false;

  List<dynamic>? get dataList => _data is List ? (_data as List<dynamic>?) : null;

  Map<String, dynamic>? get dataMap => _data is Map ? (_data as Map<String, dynamic>?) : null;

  bool get hasError => dataMap?['error'] != null;

  String? get errorMsg => hasError ? ((dataMap!['error'] as Map<String, dynamic>)['message'] as String?) : null;

  Map<String, dynamic>? get error => hasError ? (dataMap!['error'] as Map<String, dynamic>?) : null;

  @override
  String toString() => 'ApiResponse{request: ${_requestInfo()}\ndata: $_data}';

  String _requestInfo() => '${_request.method} ${_request.uri},\nRequestBody: ${_request.data}';
}

class ApiError extends DioException {
  ApiError(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  ApiError.fromDioException(DioException dioError)
      : super(
          type: dioError.type,
          error: dioError.error,
          response: dioError.response,
          requestOptions: dioError.requestOptions,
        );

  bool get isTimedOut => error is SocketException;

  @override
  String toString() {
    return 'ApiError{\nRequest: ${_requestInfo()},\n${super.toString()}}';
  }

  String _requestInfo() {
    return '${requestOptions.method} ${requestOptions.uri},\nRequestBody: ${requestOptions.data}';
  }
}
