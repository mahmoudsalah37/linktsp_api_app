import 'dart:convert';

import 'package:dio/dio.dart';

class DefaultApi {
  static String _domin = '', _token = '';
  final String defaultPath;

  static Map<String, dynamic>? _defaultQueryParameters;
  final Map<String, dynamic> _defaultHeaders = {
    "requiresToken": true,
    'authorization': 'Bearer $_token',
  };
  final dio = Dio();
  DefaultApi(this.defaultPath) {
    dio.options.baseUrl = _domin;
    dio.options.headers = _defaultHeaders;
  }
  static init(
      {required String domin,
      int version = 1,
      required String token,
      int lang = 1,
      int? zoneid}) {
    _domin = '$domin/api/v$version';
    _token = token;
    _defaultQueryParameters = {
      'lang': lang,
      'ZoneID': zoneid,
    };
  }

  Future<Response> getData(
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.get('/${path ?? defaultPath}',
        queryParameters: _defaultQueryParameters
          ?..addAll(queryParameters ?? <String, dynamic>{}));
    return response;
  }

  Future<Response> postData(
      {dynamic data,
      String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.post('/${path ?? defaultPath}',
        queryParameters: _defaultQueryParameters
          ?..addAll(queryParameters ?? <String, dynamic>{}),
        data: JsonEncoder(data));
    return response;
  }

  Future<Response> putData(dynamic data,
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.put('/${path ?? defaultPath}',
        queryParameters: _defaultQueryParameters
          ?..addAll(queryParameters ?? <String, dynamic>{}),
        data: JsonEncoder(data));
    return response;
  }

  Future<Response> deleteData(
      {String? path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.delete(
      '/${path ?? defaultPath}',
      queryParameters: _defaultQueryParameters
        ?..addAll(queryParameters ?? <String, dynamic>{}),
    );
    return response;
  }
}
