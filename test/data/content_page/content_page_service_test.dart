import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  final service = linkTspApi.contentPage;
  group('Content page service :', () {
    test('get content page is successed', () async {
      try {
        await service.getContentPage(id: 2);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
