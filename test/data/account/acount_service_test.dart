import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domin: domin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('account services: ', () {
    test('check login', () async {
      const email = 'omarzz@gmail.com', password = 'Oasdfghjkl@123';
      try {
        await linkTspApi.account.login(password: password, email: email);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('check register new user', () async {
      const email = 'jsssdd@gmail.com', password = 'M123456d';
      try {
        await linkTspApi.account.register(
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
            mobile: "01098315345",
            isActive: true,
            zoneId: 0,
            gender: 1,
          ),
        );
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('update profile', () async {
      const email = 'omarzz@gmail.com';
      final userModel = UserModel(
        id: 32,
        firstName: "Omar",
        lastName: "Khaled",
        email: email,
        mobile: "01098315350",
        gender: Gender.MALE,
        city: const CityModel(id: 152, name: "Matruh"),
        day: 20,
        month: 6,
        year: 1995,
      );
      try {
        await linkTspApi.account.updateProfile(userModel: userModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get profile details', () async {
      final userModel = UserModel(id: 32);
      try {
        await linkTspApi.account
            .getProfileDetails(customerId: 32, userModel: userModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get customer summary', () async {
      try {
        await linkTspApi.account.customerSummary(customerId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('verify user', () async {
      final activationModel = ActivationCodeModel(
        email: "omarzz@gmail.com",
        mobile: "01098315350",
        id: 32,
        activationCode: "1111",
      );
      try {
        await linkTspApi.account.verify(activationCodeModel: activationModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('resend code', () async {
      final activationModel = ActivationCodeModel(
        email: "rania.rashad@linktsp.com",
        mobile: "01148730069",
        id: 31,
        activationCode: "8902",
      );
      try {
        await linkTspApi.account
            .resendVerificationCode(activationCodeModel: activationModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('verify user', () async {
      final activationModel = ActivationCodeModel(
        email: "rania.rashad@linktsp.com",
        mobile: "01148730069",
        id: 31,
        activationCode: "8902",
      );
      try {
        await linkTspApi.account.verify(activationCodeModel: activationModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  }); // closure of group
}
