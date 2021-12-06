import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/sku/models/sku_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SkuWebServicesImp implements SkuWebServices {
  SkuWebServicesImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<List<ProductDetailsModel>> getInnerProductSliders(
      {required String productCode,
      required String relatedItemsEnum,
      int? customerId}) async {
    final response = await defaultApi.postData(
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
      {required int skuid, int? customerId}) async {
    final response = await defaultApi.postData(
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
      {required String skuCode, int? customerId}) async {
    final response = await defaultApi.postData(
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
      int? customerId}) async {
    final response =
        await defaultApi.postData(path: 'sku/$productCode', queryParameters: {
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
  /// It's used to get all product details. It must take product (skuid)
  Future<ProductDetailsModel> getProductDetails({
    required int skuid,
    int customerId,
  });

  /// It's used to get all produt details. It must take product (sku code)
  Future<ProductDetailsModel> getProductDetailsScanner(
      {required String skuCode, int customerId});

  /// It's used when changing the product color or product size.
  ///
  /// ( SwitchType : SwitchColor, SwitchSize )
  Future<ProductDetailsModel> getSkuDetails(
      {required String productCode,
      required int colorId,
      required int sizeId,
      required String switchType,
      int customerId});

  /// It's used to return related products list
  ///
  /// (RelatedItemsEnum : WhoViewedThisViewedThat, WhoBoughtThisBoughtThat, CurrCustRecentskus, RelatedItems)
  Future<List<ProductDetailsModel>> getInnerProductSliders({
    required String productCode,
    required String relatedItemsEnum,
    int customerId,
  });
}
