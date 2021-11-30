import 'dart:convert';
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
}

abstract class AccountService {
  Future<UserModel> login({required String password, required String email});
  Future<UserModel> register({required RegisterModel registerModel});
  Future<UserModel> updateProfile({required UserModel userModel});
  Future<UserModel> getProfileDetails(
      {required UserModel userModel, required int customerId});
  Future<CustomerSummaryModel> customerSummary({required int customerId});
}
