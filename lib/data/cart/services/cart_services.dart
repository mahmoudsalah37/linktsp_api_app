import 'package:linktsp_api/core/models/cart_item_model.dart';
import 'package:linktsp_api/core/models/cart_sku_model.dart';
import 'package:linktsp_api/core/models/cart_summary_model.dart';
import 'package:linktsp_api/core/models/preorder_message_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class CartServiceImp extends DefaultApi implements CartService {
  CartServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<bool> addToCart(
      {required List<CartSkuModel> cartSkuModel,
      required int customerId}) async {
    final response = await postData(
        data: cartSkuModel.map((e) => e.toJson()).toList(),
        path: 'Profile/cart/Add',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CartItemModel>> getCartList({required int customerId}) async {
    final response = await getData(
        path: 'Profile/cart', queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<CartItemModel>.from(
          result.data.map((model) => CartItemModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CartItemModel>> guestCartUpdate(
      {required List<CartSkuModel> cartSkuModel}) async {
    final response =
        await postData(data: cartSkuModel, path: 'guest/cart/update');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<CartItemModel>.from(
          result.data.map((model) => CartItemModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<PreOrderMessageModel> preOrderMessage(
      {required int customerId}) async {
    final response = await getData(
        path: 'profile/preOrederCart',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return PreOrderMessageModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<int> getCartCounter({required int customerId}) async {
    final response = await getData(
        path: 'profile/cart/Count',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> removeFromCart(
      {required int skuId, required int customerId}) async {
    final response = await postData(
        path: 'Profile/cart/remove',
        queryParameters: {"CustomerID": customerId, "SKUID": skuId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CartSummaryModel> getCartSummary({required int customerId}) async {
    final response = await getData(
        path: 'profile/cart/summary',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> cartDiscountNotification({required int customerId}) async {
    final response = await getData(
        path: 'TriggeredCart/cartDiscountNotification',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> visitorDiscountNotification(
      {required List<CartSkuModel> cartSkuModel}) async {
    final response = await postData(
        data: cartSkuModel,
        path: 'TriggeredCart/visitorCartDiscountNotification');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class CartService {
  Future<bool> addToCart(
      {required List<CartSkuModel> cartSkuModel, required int customerId});
  Future<List<CartItemModel>> getCartList({required int customerId});
  Future<List<CartItemModel>> guestCartUpdate(
      {required List<CartSkuModel> cartSkuModel});
  Future<PreOrderMessageModel> preOrderMessage({required int customerId});
  Future<int> getCartCounter({required int customerId});
  Future<bool> removeFromCart({required int skuId, required int customerId});
  Future<CartSummaryModel> getCartSummary({required int customerId});
  Future<String> cartDiscountNotification({required int customerId});
  Future<String> visitorDiscountNotification(
      {required List<CartSkuModel> cartSkuModel});
}
