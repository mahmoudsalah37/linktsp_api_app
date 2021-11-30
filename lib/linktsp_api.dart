import 'package:linktsp_api/data/Account/services/account_services.dart';
import 'package:linktsp_api/data/default_api.dart';

import 'data/token/services/token_service.dart';

class LinkTspApi {
  static Future<void> init(
      {required String domin,
      int version = 1,
      int lang = 1,
      int? zoneid}) async {
    final token = await TokenServiceImp().getToken(domin, version);
    DefaultApi.init(
        domin: domin,
        token: token,
        version: version,
        lang: lang,
        zoneid: zoneid);
  }

  TokenService get token => TokenServiceImp();

  AccountService get account => AccountServicesImp();
}
