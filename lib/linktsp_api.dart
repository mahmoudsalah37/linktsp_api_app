import 'package:linktsp_api/core/models/admin_model.dart';
import 'package:linktsp_api/core/utils/injection_container.dart';

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
  static final LinkTspApi instance = LinkTspApi();
  final sl = InjectionContainer.sl;
  static Future<void> init(
      {required String domain,
      required AdminModel admin,
      int version = 1,
      int lang = 1,
      int? zoneid}) async {
    try {
      await InjectionContainer.init();
    } catch (e) {
      print(e.toString());
    }
    final token = await TokenServiceImp()
        .getToken(domin: domain, version: version, admin: admin);

    DefaultApiImp.init(
        domin: domain,
        token: token,
        version: version,
        lang: lang,
        zoneid: zoneid);
  }

  @override
  TokenService get token => sl<TokenService>();
  @override
  AccountService get account => sl<AccountService>();
  @override
  AddressService get address => sl<AddressService>();
  @override
  CancelOrderService get cancelOrder => sl<CancelOrderService>();
  @override
  CartService get cart => sl<CartService>();
  @override
  CheckOutService get checkOut => sl<CheckOutService>();
  @override
  ComplaintService get complaint => sl<ComplaintService>();
  @override
  ContentPageService get contentPage => sl<ContentPageService>();
  @override
  ListService get list => sl<ListService>();
  @override
  LookUpService get lookUp => sl<LookUpService>();
  @override
  MenuWebService get menu => sl<MenuWebService>();
  @override
  MultiStoreService get multiStore => sl<MultiStoreService>();
  @override
  OrderService get order => sl<OrderService>();
  @override
  PageBlockWebService get pageBlock => sl<PageBlockWebService>();
  @override
  ReviewWebService get review => sl<ReviewWebService>();
  @override
  SettingWebService get setting => sl<SettingWebService>();
  @override
  SkuWebService get sku => sl<SkuWebService>();
  @override
  SocialLoginWebService get socialLogin => sl<SocialLoginWebService>();
  @override
  StoreWebService get store => sl<StoreWebService>();
  @override
  WishlistWebService get wishlist => sl<WishlistWebService>();
}

abstract class _LinkTspApiAbstract {
  TokenService get token;

  AccountService get account;

  AddressService get address;

  CancelOrderService get cancelOrder;

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

  SkuWebService get sku;

  SocialLoginWebService get socialLogin;

  StoreWebService get store;

  WishlistWebService get wishlist;
}
