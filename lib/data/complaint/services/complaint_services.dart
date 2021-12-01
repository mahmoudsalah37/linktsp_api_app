import 'package:linktsp_api/data/cancel_order/models/cancel_order_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class ComplaintServiceImp extends DefaultApi implements ComplaintService {
  ComplaintServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<bool> saveComplaint({required ComplaintModel complaintModel}) async {
    final response =
        await postData(data: complaintModel, path: 'order/complaint/save');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class ComplaintService {
  Future<bool> saveComplaint({required ComplaintModel complaintModel});
}
