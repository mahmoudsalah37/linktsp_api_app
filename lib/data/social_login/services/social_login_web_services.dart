import 'dart:io';

import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/social_login/models/social_login_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SocialLoginWebServicesImp extends DefaultApi
    implements SocialLoginWebService {
  SocialLoginWebServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<List<SocialLoginModel>> getSocialLoginKeys() async {
    final response = await getData(path: 'social/Keys', queryParameters: {
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
    final response =
        await postData(path: 'social/Login', data: socialLoginUserModel);
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return SocialLoginUserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class SocialLoginWebService {
  Future<List<SocialLoginModel>> getSocialLoginKeys();
  Future<SocialLoginUserModel> socialLogin(
      {required SocialLoginUserModel socialLoginUserModel});
}
