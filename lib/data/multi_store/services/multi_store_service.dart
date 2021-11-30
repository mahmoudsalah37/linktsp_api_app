import 'package:linktsp_api/data/multi_store/models/cart_model.dart';
import 'package:linktsp_api/data/multi_store/models/cart_validate_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class MultiStoreServiceImp extends DefaultApi implements MultiStoreService {
  MultiStoreServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<CartValidateModel> cartItemRemove(
      {required int customerID,
      required int addressId,
      required int skuid}) async {
    final respose = await postData(
      path: 'multiStore/cart/remove',
      queryParameters: {
        'customerID': customerID,
        'SKUID': addressId,
        'addressID': skuid,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return CartValidateModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CartValidateModel> cartUpdate(
      {required int customerID,
      required int addressId,
      required List<CartSkuModel> cartSkuModel}) async {
    final respose = await postData(
      path: 'multiStore/cart/update',
      data: cartSkuModel,
      queryParameters: {
        'customerID': customerID,
        'addressID': addressId,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return CartValidateModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CartValidateModel> cartValidate(
      {required int addressId, required int customerID}) async {
    final respose = await postData(
      path: 'multiStore/cart/validate',
      queryParameters: {'addressID': addressId, 'customerID': customerID},
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return CartValidateModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class MultiStoreService {
  Future<CartValidateModel> cartValidate(
      {required int addressId, required int customerID});
  Future<CartValidateModel> cartUpdate(
      {required int customerID,
      required int addressId,
      required List<CartSkuModel> cartSkuModel});
  Future<CartValidateModel> cartItemRemove(
      {required int customerID, required int addressId, required int skuid});
}
