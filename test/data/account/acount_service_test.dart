import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('account: ', () {
    test('check login is success', () async {
      const email = 'mahmoudsalah37@gmail.com', password = 'M123456d';
      final result =
          await linkTspApi.account.login(password: password, email: email);

      expect(result.email, email);
    });
    test('check create user is created', () async {
      const email = 'mahmoudsalah37@gmail.com', password = 'M123456d';
      final result =
          await linkTspApi.account.login(password: password, email: email);

      expect(result.email, email);
    });
  });
}
