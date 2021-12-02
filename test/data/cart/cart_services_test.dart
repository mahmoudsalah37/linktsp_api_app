import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
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

    test('get cart counter', () async {
      try {
        await linkTspApi.cart.getCartCounter(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('remove from cart', () async {
      try {
        await linkTspApi.cart.removeFromCart(skuId: 10811, customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get cart summary', () async {
      try {
        await linkTspApi.cart.getCartSummary(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get cart discount notification for user', () async {
      try {
        await linkTspApi.cart.cartDiscountNotification(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get cart discount notification for guest', () async {
      try {
        await linkTspApi.cart.visitorDiscountNotification(
            cartSkuModel: [CartSkuModel(skuid: 10811, qty: 1)]);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  }); // closure of group
}
