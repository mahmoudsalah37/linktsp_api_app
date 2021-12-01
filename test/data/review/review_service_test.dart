import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  const String productCode = 'ADI-60237';
  ItemReview itemReview = ItemReview(
      customerId: 31,
      description: 'منتج سئ للغاية',
      productCode: productCode,
      rating: 4);
  group('review service test: ', () {
    test('check add rate success', () async {
      try {
        final result = await linkTspApi.review
            .addRate(customerId: 31, productCode: productCode, rate: 5);

        expect(true, result);
      } catch (e) {
        expect(true, false);
      }
    });

    test('check add review success', () async {
      try {
        final result =
            await linkTspApi.review.addReview(itemReview: itemReview);

        expect(true, result);
      } catch (e) {
        expect(true, false);
      }
    });

    test('check get product rate success', () async {
      final result =
          await linkTspApi.review.getProductRate(productCode: productCode);

      expect(5, result.reviewsAvgRate);
    });

    test('check get product reviews success', () async {
      final result =
          await linkTspApi.review.getProductReviews(productCode: productCode);

      expect(1, result.reviewsCount);
    });
  });
}
