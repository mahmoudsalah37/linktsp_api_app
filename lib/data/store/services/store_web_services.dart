import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/result_model.dart';
import 'package:linktsp_api/core/models/store.dart';

import '../../exception_api.dart';

class StoreWebServiceImp implements StoreWebService {
  StoreWebServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<List<StoreModel>> storesFilter(
      {required StoreFilterModel storeFilterModel}) async {
    final response =
        await defaultApi.postData(path: 'store/filter', data: storeFilterModel);
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<StoreModel>.from(
          result.data.map((model) => StoreModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class StoreWebService {
  /// It's used to make filter on stores.
  ///
  /// If you send city id it will filter stores with city.
  ///
  /// If you send ( longitude, latitude and distance),it will filter stores by your location.
  Future<List<StoreModel>> storesFilter(
      {required StoreFilterModel storeFilterModel});
}
