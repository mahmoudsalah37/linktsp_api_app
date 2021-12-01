import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin, version: 1);
  LinkTspApi linkTspApi = LinkTspApi();

  group('cart', () {
    test('add to cart', () async {
      final cartSkuModel = CartSkuModel(skuid: 8309, qty: 1);
      try {
        await linkTspApi.cart
            .addToCart(cartSkuModel: [cartSkuModel], customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get cart list', () async {
      try {
        await linkTspApi.cart.getCartList(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('guest cart update', () async {
      try {
        await linkTspApi.cart
            .guestCartUpdate(cartSkuModel: [CartSkuModel(skuid: 8309, qty: 1)]);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('pre-order message', () async {
      try {
        await linkTspApi.cart.preOrderMessage(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  }); // closure of group
}
