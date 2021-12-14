import 'package:linktsp_api/data/Setting/models/setting_model.dart';
import 'package:linktsp_api/data/default_api.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class SettingWebServicesImp implements SettingWebService {
  SettingWebServicesImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<String> getServiceAgreement() async {
    final response = await defaultApi.getData(path: 'setting/ServiceAgreement');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<SettingModel> getVersions() async {
    final response =
        await defaultApi.getData(path: 'setting/SupportedVersions');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return SettingModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class SettingWebService {
  /// It's return all versions of the app.
  ///
  /// It can help if you want to force user to update the app or notify user that there is an update on store.
  Future<SettingModel> getVersions();

  /// It's return terms and conditions of the app.
  Future<String> getServiceAgreement();
}
