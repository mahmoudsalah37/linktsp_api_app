import 'package:linktsp_api/core/models/cancel_reason_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class CancelOrderServicesImp extends DefaultApi implements CancelOrderServices {
  CancelOrderServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<bool> cancelOrder(
      {required CancelReasonModel cancelReasonModel}) async {
    final response =
        await postData(data: cancelReasonModel, path: 'order/cancel');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class CancelOrderServices {
  Future<bool> cancelOrder({required CancelReasonModel cancelReasonModel});
}
