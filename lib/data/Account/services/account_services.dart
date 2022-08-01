import 'package:linktsp_api/data/account/models/activation_code_model.dart';
import 'package:linktsp_api/data/account/models/cart_summary_model.dart';
import 'package:linktsp_api/data/account/models/register_model.dart';
import 'package:linktsp_api/data/account/models/user_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

import '../models/customer_model.dart';
import '../models/register_model_v3.dart';

class AccountServicesImp implements AccountService {
  AccountServicesImp({required this.defaultApi});
  final DefaultApi defaultApi;
  @override
  Future<UserModel> login(
      {required String password, required String email}) async {
    final response = await defaultApi.postData(
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
  Future<UserModel> newLogin(
      {required String password,
      required String email,
      required String deviceId}) async {
    final response = await defaultApi.postData(
      version: 3,
      data: {
        "password": password.trim(),
        "email": email.trim(),
        "deviceToken": deviceId,
      },
      path: 'New/account/login',
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
    final response = await defaultApi.postData(
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
  Future<RegisterModelV3> registerV3(
      {required RegisterModelV3 registerModel}) async {
    final response = await defaultApi.postData(
      data: registerModel,
      path: 'New/account/register',
      version: 3,
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return RegisterModelV3.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<UserModel> updateProfile({required UserModel userModel}) async {
    final map = userModel.toJson();
    map['gender'] = userModel.gender?.index;
    final response = await defaultApi.postData(
      data: map,
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
      {UserModel? userModel, required int customerId}) async {
    final response = await defaultApi.postData(
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
    final response = await defaultApi.postData(
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
  Future<UserModel> verify(
      {required ActivationCodeModel activationCodeModel,
      int version = 3}) async {
    final response = await defaultApi.postData(
        data: activationCodeModel,
        path: 'New/account/verfiy',
        version: version);
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return UserModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> resendVerificationCode(
      {required ActivationCodeModel activationCodeModel}) async {
    final response = await defaultApi.postData(
        data: activationCodeModel, path: 'account/resendverificationcode');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> changePassword(
      {required int customId,
      required String oldPassword,
      required String newPassword}) async {
    final response = await defaultApi
        .getData(path: 'account/changepassword', queryParameters: {
      "customerID": customId,
      "OldPassword": oldPassword,
      "NewPassword": newPassword,
    });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> forgetPassword(
      {required String data, required int verifyType}) async {
    final response = await defaultApi.getData(
        path: 'account/forgetpassword',
        queryParameters: {"data": data, "verifyType": verifyType});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> resendPassword(
      {required String data, required int verifyType}) async {
    final response = await defaultApi.getData(
        path: 'account/resendpassword',
        queryParameters: {"data": data, "verifyType": verifyType});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<int> confirmPassword(
      {required String data,
      required int verifyType,
      required String password}) async {
    final response = await defaultApi.getData(
        path: 'account/confirmpassword',
        queryParameters: {
          "data": data,
          "verifyType": verifyType,
          "password": password
        });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> resetPassword(
      {required int customerId, required String password}) async {
    final response = await defaultApi.getData(
        path: 'account/resetpassword',
        queryParameters: {"cutomerId": customerId, "password": password});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> subscribe({required String email}) async {
    final response = await defaultApi
        .postData(path: 'account/Subscribe', queryParameters: {"email": email});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> unSubscribe({required String email}) async {
    final response = await defaultApi.postData(
        path: 'account/Unsubscribe', queryParameters: {"email": email});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> notificationsToken(
      {int? customerID, required String deviceToken}) async {
    final response = await defaultApi.getData(
        path: 'Notification/Token',
        queryParameters: {
          "customerID": customerID,
          "deviceToken": deviceToken
        });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CustomerModel>> customersSearch(
      {required String keyword, int version = 3}) async {
    final response = await defaultApi.getData(
      path: 'Customer/search',
      version: version,
      queryParameters: {'keyword': keyword},
    );

    if (response.statusCode == 200) {
      final users = response.data["Data"] as List?;
      final result =
          users?.map((e) => CustomerModel.fromJson(e)).toList() ?? [];
      return result;
    } else {
      throw ExceptionApi(
          code: response.statusCode, message: response.statusMessage);
    }
  }

  @override
  Future<bool?> delete({required int customerId, int version = 3}) async {
    final response = await defaultApi.getData(
      path: 'New/account/delete',
      version: version,
      queryParameters: {"CustomerID": customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> deactivate({required int customerId, int version = 3}) async {
    final response = await defaultApi.getData(
      path: 'New/account/deactivate',
      version: version,
      queryParameters: {"CustomerID": customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class AccountService {
  /// Send user model with email and password data for login
  ///
  /// Password must be more than 8 chacracters
  Future<UserModel> login({required String password, required String email});
  Future<bool?> delete({required int customerId, int version = 3});
  Future<bool?> deactivate({required int customerId, int version = 3});

  /// login and send device id (firebase device id)
  Future<UserModel> newLogin(
      {required String password,
      required String email,
      required String deviceId});

  Future<UserModel> register({required RegisterModel registerModel});
  Future<RegisterModelV3> registerV3({required RegisterModelV3 registerModel});
  Future<UserModel> updateProfile({required UserModel userModel});
  Future<UserModel> getProfileDetails(
      {UserModel? userModel, required int customerId});

  /// Use it to get user's profile points and wishlist number
  Future<CustomerSummaryModel> customerSummary({required int customerId});
  Future<UserModel> verify(
      {required ActivationCodeModel activationCodeModel, int version = 3});

  /// Used for resend only verification code
  Future<bool?> resendVerificationCode(
      {required ActivationCodeModel activationCodeModel});
  Future<bool?> changePassword(
      {required int customId,
      required String oldPassword,
      required String newPassword});
  Future<bool?> forgetPassword({required String data, required int verifyType});
  Future<bool?> resendPassword({required String data, required int verifyType});
  Future<int> confirmPassword(
      {required String data,
      required int verifyType,
      required String password});
  Future<bool?> resetPassword(
      {required int customerId, required String password});

  /// Get any updates or news via your mail
  Future<bool?> subscribe({required String email});

  /// Cancel subscription for getting updates or news via your mail
  Future<bool?> unSubscribe({required String email});

  /// Send firebase device token to server
  Future<bool?> notificationsToken(
      {int? customerID, required String deviceToken});
  Future<List<CustomerModel>> customersSearch(
      {required String keyword, int version = 3});
}
