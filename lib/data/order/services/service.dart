import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linktsp_api/core/models/cart_sku_model.dart';
import 'package:linktsp_api/core/models/order_model.dart';

import '../../../core/models/demo_order_model.dart';
import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class OrderServiceImp implements OrderService {
  OrderServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<OrderDetailsModel> getOrderDetails(
      {required String orderCode, int version = 1}) async {
    final respose = await defaultApi.getData(
        path: 'profile/order/$orderCode', version: version);
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return OrderDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<OrderModel>> getOrders({required int customerId}) async {
    final respose = await defaultApi.getData(
      path: 'profile/order',
      queryParameters: {'CustomerID': customerId},
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<OrderModel>.from(
          result.data.map((model) => OrderModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<DemoOrderDetailsModel>> demoGetUsersOrders({
    required int userId,
    required int storeId,
  }) async {
    final respose = await defaultApi.getData(
      path: 'profile/order/UserOrders',
      version: 3,
      queryParameters: {"userID": userId, "storeid": storeId},
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<DemoOrderDetailsModel>.from(
          result.data.map((model) => DemoOrderDetailsModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> demoSaveOrder({
    required List<DemoCartSkuModel> cartItems,
    required int customerId,
  }) async {
    final respose = await defaultApi.postData(
      path: 'profile/order/saveorder',
      version: 3,
      data: cartItems,
      queryParameters: {
        "CustomerID": customerId,
        "ShipmentAddressID": 0,
        "LoyaltyPointsRedeemed": 0,
        "orderSource": "CallCenter",
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<DemoOrderDetailsModel>> demoGetAllOrders() async {
    final respose = await defaultApi.getData(
      path: 'profile/order/GetAllOrders',
      version: 1,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<DemoOrderDetailsModel>.from(
          result.data.map((model) => DemoOrderDetailsModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<DemoOrdersGroupedWithStatus>> demoOrderGroupedByStatus(
      {required int days}) async {
    final respose = await defaultApi.getData(
        path: 'profile/order/GetOrdersGroupedByStatus',
        version: 1,
        queryParameters: {"days": days});
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<DemoOrdersGroupedWithStatus>.from(result.data
          .map((model) => DemoOrdersGroupedWithStatus.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> demoChangeOrderStatus(
      {required int orderNumber, required int orderStatus}) async {
    final response = await defaultApi.postData(
        path: 'profile/order/ChangeOrderStatus',
        queryParameters: {"OrderID": orderNumber, "Status": orderStatus});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<TrackOrderModel> trackOrder({required String orderCode}) async {
    final respose = await defaultApi.getData(
      path: 'profile/order/$orderCode/track',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return TrackOrderModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class OrderService {
  Future<List<OrderModel>> getOrders({required int customerId});
  Future<List<DemoOrderDetailsModel>> demoGetUsersOrders({
    required int userId,
    required int storeId,
  });
  Future<List<DemoOrderDetailsModel>> demoGetAllOrders();

  Future<bool> demoChangeOrderStatus(
      {required int orderNumber, required int orderStatus});

  Future<String> demoSaveOrder(
      {required List<DemoCartSkuModel> cartItems, required int customerId});

  Future<OrderDetailsModel> getOrderDetails(
      {required String orderCode, int version = 1});

  Future<List<DemoOrdersGroupedWithStatus>> demoOrderGroupedByStatus(
      {required int days});

  /// Track order to see it's current status
  Future<TrackOrderModel> trackOrder({required String orderCode});
}
