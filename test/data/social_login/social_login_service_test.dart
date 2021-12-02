import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  //const SocialLoginUserModel socialLoginModel = SocialLoginUserModel();
  group('social service test: ', () {
    test('check get social login keys success', () async {
      final result = await linkTspApi.socialLogin.getSocialLoginKeys();
      expect(true, result.isNotEmpty);
    });

    // test('check social login success', () async {
    //   final result = await linkTspApi.socialLogin.socialLogin();
    // });
  });
}
