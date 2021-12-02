import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('page block service test: ', () {
    test('check page block length', () async {
      final result = await linkTspApi.pageBlock.getPageBlock();
      expect(result.length, 8);
    });
  });
}
