import 'linktsp_api_exports.dart';

class LinkTspApi implements _LinkTspApiAbstract {
  static Future<void> init(
      {required String domin,
      int version = 1,
      int lang = 1,
      int? zoneid}) async {
    final token = await TokenServiceImp().getToken(domin, version);
    DefaultApi.init(
        domin: domin,
        token: token,
        version: version,
        lang: lang,
        zoneid: zoneid);
  }

  @override
  TokenService get token => TokenServiceImp();
  @override
  AccountService get account => AccountServicesImp();
  @override
  AddressServices get address => AddressServicesImp();
  @override
  CancelOrderServices get cancelOrder => CancelOrderServicesImp();
  @override
  CartService get cart => CartServiceImp();
  @override
  CheckOutService get checkOut => CheckOutServicesImp();
  @override
  ComplaintService get complaint => ComplaintServiceImp();
  @override
  ContentPageService get contentPage => ContentPageServiceImp();
  @override
  ListService get list => ListServiceImp();
  @override
  LookUpService get lookUp => LookUpServiceImp();
  @override
  MenuWebService get menu => MenuWebServiceImp();
  @override
  MultiStoreService get multiStore => MultiStoreServiceImp();
  @override
  OrderService get order => OrderServiceImp();
  @override
  PageBlockWebService get pageBlock => PageBlockWebServiceImp();
  @override
  ReviewWebService get review => ReviewWebServiceImp();
  @override
  SettingWebService get setting => SettingWebServicesImp();
  @override
  SkuWebServices get sku => SkuWebServicesImp();
  @override
  SocialLoginWebService get socialLogin => SocialLoginWebServicesImp();
  @override
  StoreWebService get store => StoreWebServicesImp();
  @override
  WishlistWebServices get wishlist => WishlistWebServicesImp();
}

abstract class _LinkTspApiAbstract {
  TokenService get token;

  AccountService get account;

  AddressServices get address;

  CancelOrderServices get cancelOrder;

  CartService get cart;

  ComplaintService get complaint;

  ContentPageService get contentPage;

  CheckOutService get checkOut;

  ListService get list;

  LookUpService get lookUp;

  MenuWebService get menu;

  MultiStoreService get multiStore;

  OrderService get order;

  PageBlockWebService get pageBlock;

  ReviewWebService get review;

  SettingWebService get setting;

  SkuWebServices get sku;

  SocialLoginWebService get socialLogin;

  StoreWebService get store;

  WishlistWebServices get wishlist;
}
