import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  StoreFilterModel storeFilterModel = StoreFilterModel(
      cityId: 0, distance: 20, latitude: 31.27207, longitude: 30.034274);
  group('store service test: ', () {
    test('check store filter success', () async {
      final result = await linkTspApi.store
          .storesFilter(storeFilterModel: storeFilterModel);
      expect(true, result.isNotEmpty);
    });
  });
}
