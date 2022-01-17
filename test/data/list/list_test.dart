import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.list;
  group('Content page service :', () {
    test('get Filter option data is successed', () async {
      try {
        await service.getFilterOptionsData(listModel: ListModel());
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('get listing with category is successed', () async {
      try {
        await service.getListingWithCategory(
          version: 3,
          listModel: ListModel(
            listType: "Brand",
            listTypeId: 10006,
            languageId: 1,
            pageIndex: 1,
            rowCount: 1,
            // minPrice: int.parse(minPrice.value.toStringAsFixed(0).toString()),
            // maxPrice: int.tryParse(maxPrice.value.toStringAsFixed(0).toString()),
          ),
        );
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    // test('get listing with filter is successed', () async {
    //   try {
    //     await service.getListingWithFilter(
    //       listModel: ListModel(
    //         listType: 'Category',
    //         listTypeId: 304,
    //         rowCount: 20,
    //         pageIndex: 1,
    //       ),
    //     );
    //     expect(true, true);
    //   } catch (e) {
    //     expect(true, false);
    //   }
    // });
    // test('get listing with sort is successed', () async {
    //   try {
    //     await service.getListingWithSort(listModel: ListModel());
    //     expect(true, true);
    //   } catch (e) {
    //     expect(true, false);
    //   }
    // });
  });
}
