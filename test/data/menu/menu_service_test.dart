import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.menu;
  group('Menu service :', () {
    test('get content info is successed', () async {
      try {
        await service.getContactInfo();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get menu is successed', () async {
      try {
        const customerId = 33;
        await service.getMenu(customerID: customerId);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get preorder policy is successed', () async {
      try {
        await service.getPreOrderPolicy();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
