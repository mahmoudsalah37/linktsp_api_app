import 'package:linktsp_api/core/models/address_model.dart';
import 'package:linktsp_api/data/checkout/models/checkout_cart_summary_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class CheckOutServicesImp implements CheckOutService {
  CheckOutServicesImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<AddressModel> getDefaultAddress({required int customerId}) async {
    final response = await defaultApi.getData(
        path: 'checkout/address', queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return AddressModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<AddressModel>> getShipmentAddresses(
      {required int customerId}) async {
    final response = await defaultApi.getData(
        path: 'profile/shipmentaddresses',
        queryParameters: {"CustomerID": customerId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<AddressModel>.from(
          result.data.map((model) => AddressModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckouCartSummaryModel> chehckoutCartSummary(
      {required int customerId,
      int? storeId,
      int? addressId,
      String? shipmentMethods}) async {
    final response = await defaultApi
        .getData(path: 'checkout/cartsummary', queryParameters: {
      "CustomerID": customerId,
      "PickStoreID": storeId,
      "AddressID": addressId,
      "ShipmentMethods": shipmentMethods,
    });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckouCartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<PaymentOptionsModel>> getPaymentOptions() async {
    final response = await defaultApi.getData(path: 'checkout/paymentoptions');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<PaymentOptionsModel>.from(
          result.data.map((model) => PaymentOptionsModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckouCartSummaryModel> couponRedeem(
      {required String couponCode,
      int? addressId,
      required int loyaltyPoints,
      required int customerId,
      int? storeId,
      String? shipmentMethods}) async {
    final response = await defaultApi.postData(
      path: 'checkout/coupon/redeem',
      queryParameters: {
        "CouponCode": couponCode,
        "CustomerID": customerId,
        "AddressID": addressId,
        "PickStoreID": storeId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckouCartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckouCartSummaryModel> couponClear(
      {required String couponCode,
      int? addressId,
      required int loyaltyPoints,
      required int customerId,
      int? storeId,
      String? shipmentMethods}) async {
    final response = await defaultApi.postData(
      path: 'checkout/coupon/clear',
      queryParameters: {
        "CouponCode": couponCode,
        "CustomerID": customerId,
        "AddressID": addressId,
        "PickStoreID": storeId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckouCartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckoutReviewModel> checkoutReview(
      {required int customerId,
      int? paymentOptionId,
      int? addressId,
      int? loyaltyPoints,
      int? pickStoreID,
      required String shipmentMethods}) async {
    final response = await defaultApi.getData(
      path: 'checkout/review',
      queryParameters: {
        "PaymentOptionID": paymentOptionId,
        "CustomerID": customerId,
        "AddressID": addressId,
        "PickStoreID": pickStoreID,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckoutReviewModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> confirm({
    required int customerId,
    int? paymentOptionId,
    int? addressId,
    required int loyaltyPoints,
    required double finalAmount,
    int? storeId,
    required String shipmentMethods,
  }) async {
    final response = await defaultApi.postData(
      path: 'checkout/confirm',
      queryParameters: {
        "PaymentOptionID": paymentOptionId,
        "CustomerID": customerId,
        "AddressID": addressId,
        "PickStoreID": storeId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "FinalAmount": finalAmount,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<PaymentFrameModel> confirmOrder(
      {required int customerId,
      int? paymentOptionId,
      int? addressId,
      required int loyaltyPoints,
      required double finalAmount,
      int? storeId,
      required String shipmentMethods}) async {
    final response = await defaultApi.postData(
      path: 'checkout/confirmorder',
      queryParameters: {
        "PaymentOptionID": paymentOptionId,
        "CustomerID": customerId,
        "AddressID": addressId,
        "PickStoreID": storeId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "FinalAmount": finalAmount,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return PaymentFrameModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> confirmOneClickOrder(
      {required int customerId,
      int? addressId,
      required int qty,
      required int skuId}) async {
    final response = await defaultApi.postData(
      path: 'oneclickorder/confirm',
      queryParameters: {
        "CustomerID": customerId,
        "AddressID": addressId,
        "Qty": qty,
        "skuid": skuId,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<OneClickOrderDetailsModel> oneClickOrderDetails(
      {required int customerId, required int qty, required int skuId}) async {
    final response = await defaultApi.getData(
      path: 'oneclickorder/details',
      queryParameters: {
        "CustomerID": customerId,
        "quantity": qty,
        "skuid": skuId,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return OneClickOrderDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<OneClickOrderDetailsModel> oneClickOrderTriggeredDiscount(
      {required int customerId, required int qty, required int skuId}) async {
    final response = await defaultApi.getData(
      path: 'notification/oneClickOrderTriggeredDiscount',
      queryParameters: {
        "CustomerID": customerId,
        "Qty": qty,
        "skuid": skuId,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return OneClickOrderDetailsModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckouCartSummaryModel> loyaltyPointsRedeem(
      {required int customerId,
      int? addressId,
      required int loyaltyPoints,
      int? storeId,
      String? shipmentMethods}) async {
    final response = await defaultApi.postData(
      path: 'LoyaltyPoints/Redeem',
      queryParameters: {
        "CustomerID": customerId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "ShipmentAddressID": addressId,
        "PickStoreID": storeId,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckouCartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<CheckouCartSummaryModel> loyaltyPointsClear(
      {required int customerId,
      int? addressId,
      required int loyaltyPoints,
      int? storeId,
      String? shipmentMethods}) async {
    final response = await defaultApi.postData(
      path: 'LoyaltyPoints/Unredeem',
      queryParameters: {
        "CustomerID": customerId,
        "LoyaltyPointsRedeemed": loyaltyPoints,
        "ShipmentAddressID": addressId,
        "PickStoreID": storeId,
        "ShipmentMethods": shipmentMethods,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return CheckouCartSummaryModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> validateSameDayDeliveryTime() async {
    final response = await defaultApi.postData(
      path: 'checkout/ValidateSameDayDeliveryTime',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return (result.data as bool? ?? true);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<String> confirmationOrderMessage({required String orderCode}) async {
    final response = await defaultApi.getData(
      path: 'checkout/getConfirmationMessage',
      queryParameters: {
        "orderCode": orderCode,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class CheckOutService {
  /// It's return the default address of the user.
  Future<AddressModel> getDefaultAddress({required int customerId});

  /// It's return user shipmentAddresses.
  ///
  /// It's used when user make checkout when app use multi stores
  Future<List<AddressModel>> getShipmentAddresses({required int customerId});

  /// It's return checkout summary (total - sub total - discount value)
  Future<CheckouCartSummaryModel> chehckoutCartSummary(
      {required int customerId,
      int? storeId,
      int? addressId,
      String? shipmentMethods});

  /// It's return all Payment options available (COD - CC - Apple pay)
  ///
  /// (Note) you should remove (Apple pay) option if the device is android.
  Future<List<PaymentOptionsModel>> getPaymentOptions();

  /// It's used to apply coupon value
  Future<CheckouCartSummaryModel> couponRedeem(
      {required String couponCode,
      int? addressId,
      required int loyaltyPoints,
      required int customerId,
      int? storeId,
      String? shipmentMethods});

  /// It's used to remove coupon value
  Future<CheckouCartSummaryModel> couponClear(
      {required String couponCode,
      int? addressId,
      required int loyaltyPoints,
      required int customerId,
      int? storeId,
      String? shipmentMethods});

  /// It's used to get final stage in checkout cycle, It's just a review contains (order Items - selected payment - selected address)
  Future<CheckoutReviewModel> checkoutReview(
      {required int customerId,
      int? paymentOptionId,
      int? addressId,
      int? loyaltyPoints,
      int? pickStoreID,
      required String shipmentMethods});

  /// It's used to confirm the order if the payment is (Cash on delivery).
  ///
  /// It will return the Order Code.
  Future<String> confirm({
    required int customerId,
    int? paymentOptionId,
    int? addressId,
    required int loyaltyPoints,
    required double finalAmount,
    int? storeId,
    required String shipmentMethods,
  });

  /// It's used to confirm the order if the payment is (Credit card).
  ///
  /// It will return the data of the payment gatway.
  Future<PaymentFrameModel> confirmOrder(
      {required int customerId,
      int? paymentOptionId,
      int? addressId,
      required int loyaltyPoints,
      required double finalAmount,
      int? storeId,
      required String shipmentMethods});

  /// It's used to confirm the order with one click.
  ///
  /// You can use it in product page.
  Future<String> confirmOneClickOrder(
      {required int customerId,
      int? addressId,
      required int qty,
      required int skuId});

  /// It's used to return details like (default address - total - shipment fees) to use when making one click order.
  Future<OneClickOrderDetailsModel> oneClickOrderDetails(
      {required int customerId, required int qty, required int skuId});

  /// It will notify the user if he will have a discount while making one click order.
  Future<OneClickOrderDetailsModel> oneClickOrderTriggeredDiscount(
      {required int customerId, required int qty, required int skuId});

  /// It's used to remove points
  Future<CheckouCartSummaryModel> loyaltyPointsClear(
      {required int customerId,
      int? addressId,
      required int loyaltyPoints,
      int? storeId,
      String? shipmentMethods});

  /// It's used to apply points
  Future<CheckouCartSummaryModel> loyaltyPointsRedeem(
      {required int customerId,
      int? addressId,
      required int loyaltyPoints,
      int? storeId,
      String? shipmentMethods});
  Future<bool> validateSameDayDeliveryTime();
  // return message in confirmation screen
  Future<String> confirmationOrderMessage({required String orderCode});
}
