import 'package:linktsp_api/data/apis/Menu/models/menu_model.dart';
import 'package:linktsp_api/data/apis/default_api.dart';
import 'package:linktsp_api/data/apis/exception_api.dart';
import 'package:linktsp_api/data/apis/result_model.dart';

class MenuWebServicesImp extends DefaultApi implements MenuWebServices {
  MenuWebServicesImp({String defaultPath = ''}) : super(defaultPath);
  @override
  Future<MenuModel> getMenu({required int customerID}) async {
    final respose = await getData(
      path: 'home/menu',
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
    final respose = await getData(
      path: 'home/menu',
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
  Future getPreOrderPolicy() async {
    final respose = await getData(
      path: 'home/PreOrderPolicy',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<ContactInfoModel>.from(
          result.data.map((model) => ContactInfoModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class MenuWebServices {
  Future<MenuModel> getMenu({required int customerID});
  Future<List<ContactInfoModel>> getContactInfo();

  Future getPreOrderPolicy();
}
