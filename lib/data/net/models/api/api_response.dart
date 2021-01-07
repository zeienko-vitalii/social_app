import 'package:dio/dio.dart';

class ApiResponse {
  ApiResponse(Response<dynamic> r)
      : headers = r.headers,
        data = r.data,
        request = r.request;

  final dynamic data;
  final Headers headers;
  final RequestOptions request;

  bool get hasResult => (dataList?.isNotEmpty ?? false) || (dataJson?.isNotEmpty ?? false);

  List<dynamic> get dataList => data is List ? data : null;

  Map<String, dynamic> get dataJson => data is Map ? data : null;

  @override
  String toString() => 'ApiResponse{request: ${_requestInfo()}\ndata: $data}';

  String _requestInfo() => '${request?.method} ${request?.uri},\nRequestBody: ${request?.data}';
}

class ApiError extends DioError {
  ApiError.fromDioError(DioError dioError)
      : super(
          request: dioError?.request,
          response: dioError?.response,
          type: dioError?.type,
          error: dioError?.error,
        );

  String get errorType {
    try {
      return response?.data['type'];
    } catch (e) {
      return null;
    }
  }

  String get localizedErrorMsg {
    try {
      return response?.data['message'];
    } catch (e) {
      return null;
    }
  }

  bool get isResponseEmpty => response == null;

  @override
  String toString() => 'ApiError{\nRequest: ${_requestInfo()},\n${super.toString()}}';

  String _requestInfo() => '${request?.method} ${request?.uri},\nRequestBody: ${request?.data}';
}
