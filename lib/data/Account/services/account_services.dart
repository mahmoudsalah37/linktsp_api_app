import 'dart:convert';

import 'package:linktsp_api/data/apis/Account/models/register_model.dart';
import 'package:linktsp_api/data/apis/Account/models/user_model.dart';
import 'package:linktsp_api/data/apis/default_api.dart';
import 'package:linktsp_api/data/apis/exception_api.dart';
import 'package:linktsp_api/data/apis/result_model.dart';

class AccountServicesImp extends DefaultApi implements AccountServices {
  AccountServicesImp({String defaultPath = ''}) : super(defaultPath);
  @override
  Future<UserModel> login(String password, String email) async {
    final respose = await postData(
      jsonEncode({
        "password": password.trim(),
        "email": email.trim(),
      }),
      path: 'account/login',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ApiReturnResult> register(RegisterModel registerModel) async {
    final respose = await postData(
      jsonEncode(registerModel),
      path: 'account/login',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class AccountServices {
  Future<UserModel> login(String password, String email);
  Future<ApiReturnResult> register(RegisterModel registerModel);
}
