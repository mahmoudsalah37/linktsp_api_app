import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.lookUp;
  group('Look uo service :', () {
    test('get cancel reason look up is successed', () async {
      try {
        await service.getCancelReasonLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get cities is successed', () async {
      try {
        await service.getCities();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get city per zone look up successed', () async {
      try {
        await service.getCityPerZoneLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get complaint look up successed', () async {
      try {
        await service.getComplaintLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get feedback reasons look up successed', () async {
      try {
        await service.getFeedbackReasonsLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get store city look up successed', () async {
      try {
        await service.getStoreCityLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get store successed', () async {
      try {
        await service.getStores();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get zone look up successed', () async {
      try {
        await service.getZoneLookup();
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
