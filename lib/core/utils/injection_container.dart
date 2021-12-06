import 'package:get_it/get_it.dart';
import 'package:linktsp_api/linktsp_api_exports.dart';

class InjectionContainer {
  static final sl = GetIt.instance;
  static Future<void> init() async {
    sl.registerLazySingleton<DefaultApi>(() => DefaultApiImp());

    sl.registerLazySingleton<AccountService>(
        () => AccountServicesImp(defaultApi: sl()));

    sl.registerLazySingleton<AddressServices>(
        () => AddressServicesImp(defaultApi: sl()));

    sl.registerLazySingleton<CancelOrderService>(
        () => CancelOrderServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<CartService>(
        () => CartServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<CheckOutService>(
        () => CheckOutServicesImp(defaultApi: sl()));

    sl.registerLazySingleton<ComplaintService>(
        () => ComplaintServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<ContentPageService>(
        () => ContentPageServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<ListService>(
        () => ListServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<LookUpService>(
        () => LookUpServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<MenuWebService>(
        () => MenuWebServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<MultiStoreService>(
        () => MultiStoreServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<OrderService>(
        () => OrderServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<PageBlockWebService>(
        () => PageBlockWebServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<ReviewWebService>(
        () => ReviewWebServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<SettingWebService>(
        () => SettingWebServicesImp(defaultApi: sl()));

    sl.registerLazySingleton<SkuWebServices>(
        () => SkuWebServicesImp(defaultApi: sl()));

    sl.registerLazySingleton<SocialLoginWebService>(
        () => SocialLoginWebServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<StoreWebService>(
        () => StoreWebServiceImp(defaultApi: sl()));

    sl.registerLazySingleton<TokenService>(() => TokenServiceImp());

    sl.registerLazySingleton<WishlistWebService>(
        () => WishlistWebServiceImp(defaultApi: sl()));
  }
}
