// ignore_for_file: empty_constructor_bodies

import 'dart:convert';

import 'package:dio/dio.dart';

import 'exception_api.dart';

class DefaultApiImp implements DefaultApi {
  static String _domin = '', _token = '';

  static Map<String, dynamic>? _defaultQueryParameters;
  final Map<String, dynamic> _defaultHeaders = {
    "requiresToken": true,
    'authorization': 'Bearer $_token',
  };
  final dio = Dio();
  // final dio = Dio()..interceptors.add(dioLoggerInterceptor);

  DefaultApiImp() {
    dio.options.baseUrl = _domin;
    dio.options.headers = _defaultHeaders;
  }
  static void init(
      {required String domin,
      required String token,
      int lang = 1,
      int? zoneid}) {
    _domin = '$domin/api/';
    _token = token;
    _defaultQueryParameters = {
      'lang': lang,
      'language': lang,
      'ZoneID': zoneid,
    };
  }

  @override
  Future<Response> getData(
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    try {
      final response = dio.get(
        "v$version/$path",
        queryParameters: Map<String, dynamic>.from(
            _defaultQueryParameters ?? <String, dynamic>{})
          ..addAll(queryParameters),
      );
      return response;
    } on DioError catch (e) {
      throw ExceptionApi(code: null, message: e.message);
    }
  }

  @override
  Future<Response> postData(
      {dynamic data,
      required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    try {
      final response = dio.post("v$version/$path",
          queryParameters:
              Map<String, dynamic>.from(_defaultQueryParameters ?? {})
                ..addAll(queryParameters),
          data: jsonEncode(data));
      return response;
    } on DioError catch (e) {
      throw ExceptionApi(code: null, message: e.message);
    }
  }

  @override
  Future<Response> putData(dynamic data,
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    try {
      final response = dio.put("v$version/$path",
          queryParameters:
              Map<String, dynamic>.from(_defaultQueryParameters ?? {})
                ..addAll(queryParameters),
          data: jsonEncode(data));
      return response;
    } on DioError catch (e) {
      throw ExceptionApi(code: null, message: e.message);
    }
  }

  @override
  Future<Response> deleteData(
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? _defaultHeaders;
    try {
      final response = dio.delete(
        "v$version/$path",
        queryParameters:
            Map<String, dynamic>.from(_defaultQueryParameters ?? {})
              ..addAll(queryParameters),
      );
      return response;
    } on DioError catch (e) {
      throw ExceptionApi(code: null, message: e.message);
    }
  }
}

abstract class DefaultApi {
  Future<Response> getData(
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> postData(
      {dynamic data,
      required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> putData(dynamic data,
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
  Future<Response> deleteData(
      {required String path,
      int version = 1,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic>? headers});
}
