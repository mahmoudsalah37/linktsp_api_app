import 'dart:convert';

import 'package:dio/dio.dart';

class DefaultApiImp implements DefaultApi {
  static String _domin = '', _token = '';

  static Map<String, dynamic>? _defaultQueryParameters;
  final Map<String, dynamic> _defaultHeaders = {
    "requiresToken": true,
    'authorization': 'Bearer $_token',
  };
  final dio = Dio();
  DefaultApiImp() {
    dio.options.baseUrl = _domin;
    dio.options.headers = _defaultHeaders;
  }
  static void init(
      {required String domin,
      int version = 1,
      required String token,
      int lang = 1,
      int? zoneid}) {
    _domin = '$domin/api/v$version/';
    _token = token;
    _defaultQueryParameters = {
      'lang': lang,
      'ZoneID': zoneid,
    };
  }

  @override
  Future<Response> getData(
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.get(
      path,
      queryParameters: Map<String, dynamic>.from(
          _defaultQueryParameters ?? <String, dynamic>{})
        ..addAll(queryParameters),
    );
    return response;
  }

  @override
  Future<Response> postData(
      {dynamic data,
      required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.post(path,
        queryParameters:
            Map<String, dynamic>.from(_defaultQueryParameters ?? {})
              ..addAll(queryParameters),
        data: jsonEncode(data));
    return response;
  }

  @override
  Future<Response> putData(dynamic data,
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.put(path,
        queryParameters:
            Map<String, dynamic>.from(_defaultQueryParameters ?? {})
              ..addAll(queryParameters),
        data: jsonEncode(data));
    return response;
  }

  @override
  Future<Response> deleteData(
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    final response = dio.delete(
      path,
      queryParameters: Map<String, dynamic>.from(_defaultQueryParameters ?? {})
        ..addAll(queryParameters),
    );
    return response;
  }
}

abstract class DefaultApi {
  Future<Response> getData(
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> postData(
      {dynamic data,
      required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> putData(dynamic data,
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> deleteData(
      {required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
}
