import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/sku/models/sku_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SkuWebServicesImp extends DefaultApi implements SkuWebServices {
  SkuWebServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<List<ProductDetailsModel>> getInnerProductSliders(
      {required String productCode,
      required String relatedItemsEnum,
      required int customerId}) async {
    final response = await postData(
        path: 'sku/ReleatedItem/$productCode',
        queryParameters: {
          'relatedItemsEnum': relatedItemsEnum,
          'CustomerId': customerId
        });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<ProductDetailsModel>.from(
          result.data.map((model) => ProductDetailsModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ProductDetailsModel> getProductDetails(
      {required int skuid, required int customerId}) async {
    final response = await postData(
        path: 'sku/$skuid', queryParameters: {'CustomerId': customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return ProductDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ProductDetailsModel> getProductDetailsScanner(
      {required String skuCode, required int customerId}) async {
    final response = await postData(
        path: 'sku/0',
        queryParameters: {'CustomerId': customerId, 'SKUCode': skuCode});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return ProductDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ProductDetailsModel> getSkuDetails(
      {required String productCode,
      required int colorId,
      required int sizeId,
      required String switchType,
      required int customerId}) async {
    final response = await postData(path: 'sku/$productCode', queryParameters: {
      'CustomerId': customerId,
      'colorID': colorId,
      'SizeID': sizeId,
      'SwitchType': switchType
    });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return ProductDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class SkuWebServices {
  Future<ProductDetailsModel> getProductDetails({
    required int skuid,
    required int customerId,
  });
  Future<ProductDetailsModel> getProductDetailsScanner(
      {required String skuCode, required int customerId});
  Future<ProductDetailsModel> getSkuDetails(
      {required String productCode,
      required int colorId,
      required int sizeId,
      required String switchType,
      required int customerId});
  Future<List<ProductDetailsModel>> getInnerProductSliders({
    required String productCode,
    required String relatedItemsEnum,
    required int customerId,
  });
}
