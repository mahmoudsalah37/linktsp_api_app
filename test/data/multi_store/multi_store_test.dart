import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.multiStore;
  const customerID = 33;
  group('multi store service :', () {
    test('cart item remove is successed', () async {
      try {
        await service.cartItemRemove(
            customerID: customerID, addressId: 1, skuid: 11165);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('cart update is successed', () async {
      try {
        await service
            .cartUpdate(customerID: customerID, addressId: 1, carts: []);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('cart validate is successed', () async {
      try {
        await service.cartValidate(addressId: 1, customerID: customerID);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
