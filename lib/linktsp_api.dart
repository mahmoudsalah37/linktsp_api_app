import 'package:linktsp_api/core/models/admin_model.dart';

import 'linktsp_api_exports.dart';

//models
export 'data/account/models/activation_code_model.dart';
export 'data/account/models/cart_summary_model.dart';
export 'data/account/models/register_model.dart';
export 'data/account/models/user_model.dart';
export 'data/checkout/models/checkout_cart_summary_model.dart';

export 'data/content_page/models/content_page_model.dart';

export 'data/list/models/list_model.dart';

export 'data/lookup/models/lookup_model.dart';

export 'data/menu/models/menu_model.dart';

export 'data/multi_store/models/cart_validate_model.dart';

export 'data/page_block/models/page_block_model.dart';
export 'data/reviews/models/review_model.dart';
export 'data/setting/models/setting_model.dart';
export 'data/sku/models/sku_model.dart';
export 'data/social_login/models/social_login_model.dart';
export 'core/models/store.dart';
export 'data/wishlist/models/wishlist_model.dart';

export 'core/models/address_model.dart';
export 'core/models/cancel_reason_model.dart';
export 'core/models/cart_item_model.dart';
export 'core/models/cart_sku_model.dart';
export 'core/models/cart_summary_model.dart';
export 'core/models/city_model.dart';
export 'core/models/color_model.dart';
export 'core/models/complaint_model.dart';
export 'core/models/config_delivery_period_model.dart';
export 'core/models/feature_model.dart';
export 'core/models/order_model.dart';
export 'core/models/preorder_message_model.dart';
export 'core/models/size_model.dart';
export 'core/models/store_model.dart';
export 'core/models/store.dart';
export 'core/models/summary_model.dart';
export 'core/models/admin_model.dart';

class LinkTspApi implements _LinkTspApiAbstract {
  static Future<void> init(
      {required String domin,
      required AdminModel admin,
      int version = 1,
      int lang = 1,
      int? zoneid}) async {
    final token = await TokenServiceImp()
        .getToken(domin: domin, version: version, admin: admin);
    // ignore: avoid_print
    print(token);
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
