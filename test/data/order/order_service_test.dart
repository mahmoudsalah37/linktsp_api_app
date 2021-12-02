import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.order;
  const customerID = 31;
  const orderCode = '000000101';
  group('Order service :', () {
    test('Check get orders successed', () async {
      try {
        await service.getOrders(customerId: customerID);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('Check get order details successed', () async {
      try {
        await service.getOrderDetails(orderCode: orderCode);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('Check track order details successed', () async {
      try {
        await service.trackOrder(orderCode: orderCode);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
