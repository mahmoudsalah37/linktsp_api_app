import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('social service test: ', () {
    test('check get social login keys success', () async {
      final result = await linkTspApi.socialLogin.getSocialLoginKeys();
      expect(true, result.isNotEmpty);
    });
  });
}
