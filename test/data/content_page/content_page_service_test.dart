import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('Content page service :', () {
    test('get content page is successed', () async {
      try {
        await linkTspApi.contentPage.getContentPage(id: 2);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  });
}
