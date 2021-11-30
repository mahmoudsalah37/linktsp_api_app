import 'package:linktsp_api/data/apis/Menu/models/menu_model.dart';
import 'package:linktsp_api/data/apis/default_api.dart';
import 'package:linktsp_api/data/apis/result_model.dart';

class MenuWebServices extends DefaultApi {
  MenuWebServices({String defaultPath = ''}) : super(defaultPath);

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

  Future getContactInfo() async {}

  Future getPreOrderPolicy() async {}
}
