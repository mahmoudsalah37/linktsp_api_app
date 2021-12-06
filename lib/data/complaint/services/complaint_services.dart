import 'package:linktsp_api/core/models/complaint_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class ComplaintServiceImp implements ComplaintService {
  ComplaintServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<bool?> saveComplaint({required ComplaintModel complaintModel}) async {
    final response = await defaultApi.postData(
        data: complaintModel, path: 'order/complaint/save');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class ComplaintService {
  Future<bool?> saveComplaint({required ComplaintModel complaintModel});
}
