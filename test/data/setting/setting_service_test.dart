import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();

  group('setting service test: ', () {
    test('check get versions success', () async {
      final result = await linkTspApi.setting.getVersions();
      expect(false, result.forceUpdate);
    });

    test('check get service agreement success', () async {
      final result = await linkTspApi.setting.getServiceAgreement();
      expect(true, result.isNotEmpty);
    });
  });
}
