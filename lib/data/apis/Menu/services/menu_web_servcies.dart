import 'package:linktsp_api/data/apis/Menu/models/menu_model.dart';
import 'package:linktsp_api/data/apis/default_api.dart';
import 'package:linktsp_api/data/apis/exception_api.dart';
import 'package:linktsp_api/data/apis/result_model.dart';

class MenuWebServicesImp extends DefaultApi implements MenuWebServices {
  MenuWebServicesImp({String defaultPath = ''}) : super(defaultPath);
  @override
  Future<MenuModel> getMenu({required int customerID, int lang = 1}) async {
    final respose = await getData(
      path: 'home/menu',
      queryParameters: {
        'CustomerID': customerID,
        'lang': lang,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return MenuModel.fromJson(result.data);
    } else {
      throw Exception(result.error?.first);
    }
  }

  @override
  Future<List<ContactInfoModel>> getContactInfo({int lang = 1}) async {
    final respose = await getData(
      path: 'home/menu',
      queryParameters: {
        'lang': lang,
      },
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
  Future getPreOrderPolicy() async {}
}

abstract class MenuWebServices {
  Future<MenuModel> getMenu({required int customerID, int lang = 1});
  Future<List<ContactInfoModel>> getContactInfo();

  Future getPreOrderPolicy();
}
