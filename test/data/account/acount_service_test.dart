import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/data/Account/models/register_model.dart';
import 'package:linktsp_api/data/Account/models/user_model.dart';
import 'package:linktsp_api/data/Account/models/cities_model.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('account services: ', () {
    test('check login', () async {
      const email = 'omarzz@gmail.com', password = 'Oasdfghjkl@123';
      try {
        final result =
            await linkTspApi.account.login(password: password, email: email);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
    test('check register new user', () async {
      const email = 'jssdd@gmail.com', password = 'M123456d';
      try {
        final result = await linkTspApi.account.register(
          registerModel: RegisterModel(
            email: email,
            password: password,
            conditionAgreement: true,
            mobileType: "Android",
            isSubscribed: true,
            deviceId: "string",
            id: 0,
            firstName: "string",
            lastName: "string",
            mobile: "01098315315",
            isActive: true,
            zoneId: 0,
            gender: 1,
          ),
        );
        print("result: $result");
        expect(true, true);
      } catch (e) {
        print("error: $e");
        expect(true, false);
      }
    });
  });
  test('update profile', () async {
    const email = 'omarzz@gmail.com', password = 'Oasdfghjkl@123';
    try {
      final result = await linkTspApi.account.updateProfile(
          userModel: UserModel(
        id: 32,
        firstName: "Omar",
        lastName: "Khaled",
        email: email,
        mobile: "01098315351",
        gender: Gender.MALE,
        city: const CityModel(id: 152, name: "Matruh"),
        day: 20,
        month: 06,
        year: 1995,
      ));
      expect(true, true);
    } catch (e) {
      expect(true, false);
    }
  });
}
