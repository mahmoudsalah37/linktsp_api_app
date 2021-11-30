import 'package:dio/dio.dart';

class DefaultApi {
  static String _domin = '', _token = '';
  final String defaultPath;
  Map<String, dynamic> defaultHeaders = {
    "requiresToken": true,
    'authorization': 'Bearer $_token',
  };
  final dio = Dio();
  DefaultApi(this.defaultPath) {
    dio.options.baseUrl = _domin;
    dio.options.headers = defaultHeaders;
  }
  static init({required String domin, int version = 1, required String token}) {
    _domin = '$domin/api/v$version';
    _token = token;
  }

  Future<Response> getData(
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? defaultHeaders;
    final response =
        dio.get('/${path ?? defaultPath}', queryParameters: queryParameters);
    return response;
  }

  Future<Response> postData(dynamic data,
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? defaultHeaders;
    final response = dio.post('/${path ?? defaultPath}',
        queryParameters: queryParameters, data: data);
    return response;
  }

  Future<Response> putData(dynamic data,
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? defaultHeaders;
    final response = dio.put('/${path ?? defaultPath}',
        queryParameters: queryParameters, data: data);
    return response;
  }

  Future<Response> deleteData(
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? defaultHeaders;
    final response =
        dio.delete('/${path ?? defaultPath}', queryParameters: queryParameters);
    return response;
  }
}
