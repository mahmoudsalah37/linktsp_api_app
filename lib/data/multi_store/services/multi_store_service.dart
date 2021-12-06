import 'package:linktsp_api/core/models/cart_sku_model.dart';
import 'package:linktsp_api/data/multi_store/models/cart_validate_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class MultiStoreServiceImp extends DefaultApiImp implements MultiStoreService {
  MultiStoreServiceImp();

  @override
  Future<CartValidateModel> cartItemRemove(
      {required int customerID,
      required int addressId,
      required int skuid}) async {
    final respose = await postData(
      path: 'multiStore/cart/remove',
      queryParameters: {
        'customerID': customerID,
        'SKUID': skuid,
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
  Future<CartValidateModel> cartUpdate(
      {required int customerID,
      required int addressId,
      required List<CartSkuModel> carts}) async {
    final respose = await postData(
      path: 'multiStore/cart/update',
      data: carts,
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
  /// Validate cart to make sure that all user's cart item still exist in his zone
  Future<CartValidateModel> cartValidate(
      {required int addressId, required int customerID});
  Future<CartValidateModel> cartUpdate(
      {required int customerID,
      required int addressId,
      required List<CartSkuModel> carts});
  Future<CartValidateModel> cartItemRemove(
      {required int customerID, required int addressId, required int skuid});
}
