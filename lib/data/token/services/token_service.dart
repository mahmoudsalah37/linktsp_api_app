import 'package:dio/dio.dart';
import 'package:linktsp_api/linktsp_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class TokenServiceImp implements TokenService {
  TokenServiceImp();

  @override
  Future<String> getToken(
      {required String domin,
      required int version,
      required AdminModel admin}) async {
    final respose = await Dio().get(
      '$domin/api/v$version/account/token',
      queryParameters: {
        '_UserName': admin.email,
        '_Password': admin.password,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data as String;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class TokenService {
  /// Api collection needs token to be used and authorized and this service gets this token
  Future<String> getToken(
      {required String domin, required int version, required AdminModel admin});
}
