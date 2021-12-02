import 'package:linktsp_api/core/models/order_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class OrderServiceImp extends DefaultApi implements OrderService {
  OrderServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<OrderDetailsModel> getOrderDetails({required String orderCode}) async {
    final respose = await getData(
      path: 'profile/order/$orderCode',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return OrderDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<OrderModel>> getOrders({required int customerId}) async {
    final respose = await getData(
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
  Future<TrackOrderModel> trackOrder({required String orderCode}) async {
    final respose = await getData(
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
  Future<OrderDetailsModel> getOrderDetails({required String orderCode});

  /// Track order to see it's current status
  Future<TrackOrderModel> trackOrder({required String orderCode});
}
