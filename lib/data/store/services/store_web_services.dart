import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/result_model.dart';
import 'package:linktsp_api/data/store/models/store_model.dart';

import '../../exception_api.dart';

class StoreWebServicesImp extends DefaultApi implements StoreWebServices {
  StoreWebServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<List<StoreModel>> storesFilter(
      {required StoreFilterModel storeFilterModel}) async {
    final response =
        await postData(path: 'store/filter', data: storeFilterModel);
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<StoreModel>.from(
          result.data.map((model) => StoreModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class StoreWebServices {
  Future<List<StoreModel>> storesFilter(
      {required StoreFilterModel storeFilterModel});
}
