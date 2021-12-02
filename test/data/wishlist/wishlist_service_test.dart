import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  const String productCode = 'ERJZT05137';
  const int customerId = 31;
  const int skuid = 11165;
  const String skuCode = 'ERJZT05137-BPZ0-XS';
  group('wishlist service test: ', () {
    test('test add to wishlist success', () async {
      final result = await linkTspApi.wishlist
          .addToWishlist(customerId: customerId, skuid: skuid);
      expect(true, result);
    });

    test('test remove from wishlist success', () async {
      final result = await linkTspApi.wishlist
          .removeFromWishlist(customerId: customerId, skuid: skuid);
      expect(true, result);
    });

    test('test get wishlist success', () async {
      final result =
          await linkTspApi.wishlist.getWishlist(customerId: customerId);
      expect(true, result.isNotEmpty);
    });

    test('test move to cart success', () async {
      final result = await linkTspApi.wishlist
          .moveToCart(customerId: customerId, skuid: skuid);
      expect(true, result);
    });
  });
}
