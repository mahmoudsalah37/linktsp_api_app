import 'package:get_it/get_it.dart';
import 'package:linktsp_api/linktsp_api_exports.dart';

class InjectionContainer {
  static final sl = GetIt.instance;
  static Future<void> init() async {
    sl.registerLazySingleton<DefaultApi>(() => DefaultApiImp());
    sl.registerLazySingleton<AccountService>(
        () => AccountServicesImp(defaultApi: sl()));
  }
}
