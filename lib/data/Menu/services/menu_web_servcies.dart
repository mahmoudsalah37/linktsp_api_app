import 'package:linktsp_api/data/menu/models/menu_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class MenuWebServiceImp implements MenuWebService {
  MenuWebServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;
  @override
  Future<MenuModel> getMenu({int? customerID, int version = 1}) async {
    final respose = await defaultApi.getData(
      path: 'Menu/menu',
      version: version,
      queryParameters: {
        'CustomerID': customerID,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return MenuModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<ContactInfoModel>> getContactInfo() async {
    final respose = await defaultApi.getData(
      path: 'home/contactInfo',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<ContactInfoModel>.from(
          result.data.map((model) => ContactInfoModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> getPreOrderPolicy() async {
    final respose = await defaultApi.getData(
      path: 'home/PreOrderPolicy',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class MenuWebService {
  Future<MenuModel> getMenu({required int customerID, int version = 1});
  Future<List<ContactInfoModel>> getContactInfo();

  /// User it in checkout page to notify the user about pre-order products policy if he has one
  Future<String> getPreOrderPolicy();
}
