import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class TokenServiceImp extends DefaultApi implements TokenService {
  TokenServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<String> getToken() async {
    final respose = await getData(
      path: 'account/token',
      queryParameters: {
        '_UserName': '69A4788C-2E32-4CB5-A00A-477DD3B3FC72',
        '_Password': 'C19BCDBD-1A8E-4F8F-B30E-B721582E64EC',
      },
      headers: {},
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
  Future<String> getToken();
}
