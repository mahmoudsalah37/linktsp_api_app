import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  const String productCode = 'ERJZT05137';
  const String relatedItemsEnum = 'WhoViewedThisViewedThat';
  const int customerId = 31;
  // const int skuid = 11165;
  // const String skuCode = 'ERJZT05137-BPZ0-XS';
  group('sku service test: ', () {
    test('check get inner product sliders success', () async {
      final result = await linkTspApi.sku.getInnerProductSliders(
          productCode: productCode,
          relatedItemsEnum: relatedItemsEnum,
          customerId: customerId);
      expect(true, result.isNotEmpty);
    });

    // test('check get product details success', () async {
    //   final result = await linkTspApi.sku
    //       .getProductDetails(skuid: skuid, customerId: customerId);
    //   expect(193, result.colorId);
    // });

    test('check change product size success', () async {
      final result = await linkTspApi.sku.getSkuDetails(
          productCode: productCode,
          colorId: 270,
          sizeId: 351,
          customerId: customerId,
          switchType: 'SwitchSize');
      expect(351, result.sizeId);
    });

    // test('check get product details scanner success', () async {
    //   final result = await linkTspApi.sku
    //       .getProductDetailsScanner(skuCode: skuCode, customerId: customerId);
    //   expect(11165, result.id);
    // });
  });
}
