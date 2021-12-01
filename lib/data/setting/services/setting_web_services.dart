import 'package:linktsp_api/data/Setting/models/setting_model.dart';
import 'package:linktsp_api/data/default_api.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SettingWebServicesImp extends DefaultApi implements SettingWebService {
  SettingWebServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<String> getServiceAgreement() async {
    final response = await getData(path: 'setting/ServiceAgreement');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<SettingModel> getVersions() async {
    final response = await getData(path: 'setting/SupportedVersions');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return SettingModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class SettingWebService {
  Future<SettingModel> getVersions();
  Future<String> getServiceAgreement();
}
