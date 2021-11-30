import 'package:linktsp_api/data/Account/models/activation_code_model.dart';
import 'package:linktsp_api/data/Account/models/cart_summary_model.dart';
import 'package:linktsp_api/data/Account/models/register_model.dart';
import 'package:linktsp_api/data/Account/models/user_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class AccountServicesImp extends DefaultApi implements AccountService {
  AccountServicesImp({String defaultPath = ''}) : super(defaultPath);
  @override
  Future<UserModel> login(
      {required String password, required String email}) async {
    final response = await postData(
      data: {
        "password": password.trim(),
        "email": email.trim(),
      },
      path: 'account/login',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<UserModel> register({required RegisterModel registerModel}) async {
    final response = await postData(
      data: registerModel,
      path: 'account/register',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<UserModel> updateProfile({required UserModel userModel}) async {
    final map = userModel.toJson();
    map['gender'] = userModel.gender?.index;
    final response = await postData(
      data: userModel,
      path: 'profile/update',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<UserModel> getProfileDetails(
      {required UserModel userModel, required int customerId}) async {
    final response = await postData(
        data: userModel,
        path: 'profile/details',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CustomerSummaryModel> customerSummary(
      {required int customerId}) async {
    final response = await postData(
      path: 'profile/customerSummary',
      queryParameters: {"CustomerID": customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CustomerSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> verify(
      {required ActivationCodeModel activationCodeModel}) async {
    final response =
        await postData(data: activationCodeModel, path: 'account/verfiy');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> resendCode(
      {required ActivationCodeModel activationCodeModel}) async {
    final response = await postData(
        data: activationCodeModel, path: 'account/resendverificationcode');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> changePassword(
      {required int customId,
      required String oldPassword,
      required String newPassword}) async {
    final response =
        await getData(path: 'account/changepassword', queryParameters: {
      "customerID": customId,
      "OldPassword": oldPassword,
      "NewPassword": newPassword,
    });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> forgetPassword(
      {required String data, required int verifyType}) async {
    final response = await getData(
        path: 'account/forgetpassword',
        queryParameters: {"data": data, "verifyType": verifyType});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> resendPassword(
      {required String data, required int verifyType}) async {
    final response = await getData(
        path: 'account/resendpassword',
        queryParameters: {"data": data, "verifyType": verifyType});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<int> confirmPassword(
      {required String data,
      required int verifyType,
      required String password}) async {
    final response = await getData(
        path: 'account/confirmpassword',
        queryParameters: {
          "data": data,
          "verifyType": verifyType,
          "password": password
        });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> resetPassword(
      {required int customerId, required String password}) async {
    final response = await getData(
        path: 'account/resetpassword',
        queryParameters: {"cutomerId": customerId, "password": password});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> subscribe({required String email}) async {
    final response = await getData(
        path: 'account/Subscribe', queryParameters: {"email": email});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> unSubscribe({required String email}) async {
    final response = await getData(
        path: 'account/Unsubscribe', queryParameters: {"email": email});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> notificationsToken({required String deviceToken}) async {
    final response = await getData(
        path: 'Notification/Token',
        queryParameters: {"deviceToken": deviceToken});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class AccountService {
  Future<UserModel> login({required String password, required String email});
  Future<UserModel> register({required RegisterModel registerModel});
  Future<UserModel> updateProfile({required UserModel userModel});
  Future<UserModel> getProfileDetails(
      {required UserModel userModel, required int customerId});
  Future<CustomerSummaryModel> customerSummary({required int customerId});
  Future<bool> verify({required ActivationCodeModel activationCodeModel});
  Future<bool> resendCode({required ActivationCodeModel activationCodeModel});
  Future<bool> changePassword(
      {required int customId,
      required String oldPassword,
      required String newPassword});
  Future<bool> forgetPassword({required String data, required int verifyType});
  Future<bool> resendPassword({required String data, required int verifyType});
  Future<int> confirmPassword(
      {required String data,
      required int verifyType,
      required String password});
  Future<bool> resetPassword(
      {required int customerId, required String password});
  Future<bool> subscribe({required String email});
  Future<bool> unSubscribe({required String email});
  Future<bool> notificationsToken({required String deviceToken});
}
