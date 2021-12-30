import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';
import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  final LinkTspApi linkTspApi = LinkTspApi();
  group('account services: ', () {
    test('check login', () async {
      // Arange (Initialization)
      UserModel userModel;

      // Act (Execution)
      const email = 'omarzz@gmail.com', password = 'Oasdfghjkl@123';
      userModel =
          await linkTspApi.account.login(password: password, email: email);

      // Assert (Observation)
      expect(userModel.id, 32);
    });

    // test('check register new user', () async {
    //   const email = 'jsssdcfld@gmail.com', password = 'M123456d';
    //   try {
    //     await linkTspApi.account.register(
    //       registerModel: RegisterModel(
    //         email: email,
    //         password: password,
    //         conditionAgreement: true,
    //         mobileType: "Android",
    //         isSubscribed: true,
    //         deviceId: "string",
    //         id: 0,
    //         firstName: "string",
    //         lastName: "string",
    //         mobile: "01091015145",
    //         isActive: true,
    //         zoneId: 0,
    //         gender: 1,
    //       ),
    //     );
    //     expect(true, true);
    //   } catch (e) {
    //     expect(true, false);
    //   }
    // });

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
        activationCode: "2097",
      );
      try {
        await linkTspApi.account.verify(activationCodeModel: activationModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('resend verification code', () async {
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

    test('change password', () async {
      try {
        await linkTspApi.account.changePassword(
            customId: 30,
            oldPassword: "Oasdfghjkl@123",
            newPassword: "Oasdfghjkl@123");
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('forget password', () async {
      try {
        await linkTspApi.account.forgetPassword(
            data: "01098315351", verifyType: 1); //1 form mobile and 2 for email
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('resend password', () async {
      try {
        await linkTspApi.account
            .resendPassword(data: "01098315351", verifyType: 1);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    // test('confirm password', () async {
    //   try {
    //     await linkTspApi.account.confirmPassword(
    //         data: "01098315351", verifyType: 1, password: "Oasdfghjkl@123");
    //     expect(true, true);
    //   } catch (e) {
    //     expect(true, false);
    //   }
    // });

    test('reset password', () async {
      try {
        await linkTspApi.account
            .resetPassword(customerId: 32, password: "Oasdfghjkl@123");
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('subscribe', () async {
      try {
        await linkTspApi.account.subscribe(email: "omarz@gmail.com");
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  }); // closure of group
}
