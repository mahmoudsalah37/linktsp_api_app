# linktsp_api

linktsp_api is private package for empolyees inside linktsp company
used to handle call APIs.

## Services

- Account
  - Future<\UserModel> login({required String password, required String email});
  - Future<\UserModel> register({required RegisterModel registerModel});
  - Future<\UserModel> updateProfile({required UserModel userModel});
  - Future<\UserModel> getProfileDetails(
  {required UserModel userModel, required int customerId});
  - Future<\CustomerSummaryModel> customerSummary({required int customerId});
  - Future<\bool> verify({required ActivationCodeModel activationCodeModel});
  - Future<\bool> resendVerificationCode(
  {required ActivationCodeModel activationCodeModel});
  - Future<\bool> changePassword(
  {required int customId,
  required String oldPassword,
  required String newPassword});
  - Future<\bool> forgetPassword({required String data, required int verifyType});
  - Future<\bool> resendPassword({required String data, required int verifyType});
  - Future<\int> confirmPassword(
  {required String data,
  required int verifyType,
  required String password});
  - Future<\bool> resetPassword(
  {required int customerId, required String password});
  - Future<\bool> subscribe({required String email});
  - Future<\bool> unSubscribe({required String email});
  - Future<\bool> notificationsToken({required String deviceToken});
- Address
  - Future<\List<\AddressModel>> getAddressBook({required int customId});
  - Future<\List<\AddressModel>> getShipmentAddresses({required int customId});
  - Future<\AddressModel> saveAddress({required AddressModel addressModel});
  - Future<\AddressModel> getAddressDetails({required int addressId});
  - Future<\bool> deleteAddress({required int addressId});
- Cancel Order
  - Future<\bool> cancelOrder({required CancelReasonModel cancelReasonModel});
- Cart
  - Future<\bool> addToCart({required List<\CartSkuModel> cartSkuModel, required int customerId});
  - Future<\List<\CartItemModel>> getCartList({required int customerId});
  - Future<\List<\CartItemModel>> guestCartUpdate({required List<\CartSkuModel> cartSkuModel});
  -- Future<\PreOrderMessageModel> preOrderMessage({required int customerId});
  -- Future<\int> getCartCounter({required int customerId});
  -- Future<\bool> removeFromCart({required int skuId, required int customerId});
  -- Future<\CartSummaryModel> getCartSummary({required int customerId});
  -- Future<\String> cartDiscountNotification({required int customerId});
  -- Future<\String> visitorDiscountNotification({required List<\CartSkuModel> cartSkuModel});
- Checkout
  - Future<\AddressModel> getDefaultAddress({required int customerId});
  - Future<\List<AddressModel>> getShipmentAddresses({required int customerId});
  - Future<\CheckouCartSummaryModel> chehckoutCartSummary(
  {required int customerId, required int storeId, required int addressId});
  - Future<\List<\PaymentOptionsModel>> getPaymentOptions();
  -- Future<\CheckouCartSummaryModel> couponRedeem(
  {required String couponCode,
  required int addressId,
  required int loyaltyPoints,
  required int customerId,
  int? storeId});
  - Future<\CheckouCartSummaryModel> couponClear(
  {required String couponCode,
  required int addressId,
  required int loyaltyPoints,
  required int customerId,
  int? storeId});
  - Future<\CheckoutReviewModel> checkoutReview(
  {required int customerId,
  int? paymentOptionId,
  int? addressId,
  int? loyaltyPoints,
  int? pickStoreID});
  - Future<\String> confirm(
  {required int customerId,
  int? paymentOptionId,
  int? addressId,
  required int loyaltyPoints,
  required double finalAmount,
  int? storeId});
  - Future<\PaymentFrameModel> confirmOrder(
  {required int customerId,
  int? paymentOptionId,
  int? addressId,
  required int loyaltyPoints,
  required double finalAmount,
  int? storeId});
  - Future<\String> confirmOneClickOrder(
  {required int customerId,
  int? addressId,
  required int qty,
  required int skuId});
  - Future<\OneClickOrderDetailsModel> oneClickOrderDetails(
  {required int customerId, required int qty, required int skuId});
  - Future<\OneClickOrderDetailsModel> oneClickOrderTriggeredDiscount(
  {required int customerId, required int qty, required int skuId});
  - Future<\CheckouCartSummaryModel> loyaltyPointsClear(
  {required int customerId,
  required int addressId,
  required int loyaltyPoints,
  int? storeId});
  - Future<\CheckouCartSummaryModel> loyaltyPointsRedeem(
  {required int customerId,
  required int addressId,
  required int loyaltyPoints,
  int? storeId});
- Complaint
  - Future<\bool> saveComplaint({required ComplaintModel complaintModel});
- Content Page
  - Future<\ContentPageModel> getContentPage({required int id});
- List
  - Future<\ListingDataModel> getListingWithCategory({required ListModel listModel});
  - Future<\ListingDataModel> getListingWithFilter({required ListModel listModel});
  - Future<\ListingDataModel> getListingWithSort({required ListModel listModel});
  - Future<\FilterDataModel> getFilterOptionsData({required ListModel listModel});
- Lookup
  - Future<\List<\CityModel>> getCities();
  - Future<\List<\StoreModel>> getStores();
  - Future<\List<\ComplaintLookupModel>> getComplaintLookup();
  - Future<\List<\CancelReasonLookupModel>> getCancelReasonLookup();
  - Future<\List<\CityModel>> getZoneLookup();
  - Future<\List<\CityModel>> getStoreCityLookup();
  - Future<\List<\CityModel>> getCityPerZoneLookup();
  - Future<\List<\FeedbackReasonsLookupModel>> getFeedbackReasonsLookup();
- Menu
  - Future<\MenuModel> getMenu({required int customerID});
  - Future<\List<\ContactInfoModel>> getContactInfo();
  - Future<\String> getPreOrderPolicy();
- Multi Store
  - Future<\CartValidateModel> cartValidate(
  {required int addressId, required int customerID});
  - Future<\CartValidateModel> cartUpdate(
  {required int customerID,
  required int addressId,
  required List<\CartSkuModel> carts});
  - Future<\CartValidateModel> cartItemRemove(
  {required int customerID, required int addressId, required int skuid});
- Order
  - Future<\List<\OrderModel>> getOrders({required int customerId});
  - Future<\OrderDetailsModel> getOrderDetails({required String orderCode});
  - Future<\TrackOrderModel> trackOrder({required String orderCode});
- Page Block
  - Future<\PageBlockModel> getPageBlock();
- Reviews
  - Future<\ReviewModel> getProductReviews({required String productCode});
  - Future<\bool> addReview({required ItemReview itemReview});
  - Future<\ReviewRateModel> getProductRate({required String productCode});
  - Future<\bool> addRate(
  {required String productCode,
  required double rate,
  required int customerId});
- Setting
  - Future<\SettingModel> getVersions();
  - Future<\String> getServiceAgreement();
- Sku
  - Future<\ProductDetailsModel> getProductDetails({
  required int skuid,
  int customerId,
  });
  - Future<\ProductDetailsModel> getProductDetailsScanner(
  {required String skuCode, int customerId});
  -- Future<\ProductDetailsModel> getSkuDetails(
  {required String productCode,
  required int colorId,
  required int sizeId,
  required String switchType,
  int customerId});
  -- Future<\List<\ProductDetailsModel>> getInnerProductSliders({
  required String productCode,
  required String relatedItemsEnum,
  int customerId,
  });
- Social Login
  -- Future<\List<\SocialLoginModel>> getSocialLoginKeys();
  -- Future<\SocialLoginUserModel> socialLogin(
  {required SocialLoginUserModel socialLoginUserModel});
- Store
  - Future<\List<\StoreModel>> storesFilter(
  {required StoreFilterModel storeFilterModel});
- Token
  - Future<\String> getToken(String domin, int version);
- Wishlist
  - Future<\List<\WishlistProductsModel>> getWishlist({required int customerId});
  - Future<\bool> addToWishlist({required int customerId, required int skuid});
  - Future<\bool> removeFromWishlist(
  {required int customerId, required int skuid});
  - Future<\bool> removeAllFromWishlist({required int customerId});
  - Future<\bool> moveToCart({required int customerId, required int skuid});

