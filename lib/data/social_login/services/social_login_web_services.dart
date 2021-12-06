import 'dart:io';

import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/social_login/models/social_login_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SocialLoginWebServiceImp implements SocialLoginWebService {
  SocialLoginWebServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<List<SocialLoginModel>> getSocialLoginKeys() async {
    final response = await defaultApi.getData(
        path: 'social/Keys',
        queryParameters: {
          "mobileType": Platform.isAndroid ? "Android" : "IOS"
        });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<SocialLoginModel>.from(
          result.data.map((model) => SocialLoginModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<SocialLoginUserModel> socialLogin(
      {required SocialLoginUserModel socialLoginUserModel}) async {
    final response = await defaultApi.postData(
        path: 'social/Login', data: socialLoginUserModel);
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return SocialLoginUserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class SocialLoginWebService {
  /// It's used to return social login keys.
  ///
  /// It will return list of keys depends on the device platform.
  Future<List<SocialLoginModel>> getSocialLoginKeys();

  /// It's used to make login with social.
  ///
  /// (SocialType: Facebook=1, Twitter=2, Apple Id=7, Instgram=3)
  ///
  /// You should pass the id that returns from social authentication to (SocialCode).
  Future<SocialLoginUserModel> socialLogin(
      {required SocialLoginUserModel socialLoginUserModel});
}
