import 'package:linktsp_api/core/models/address_model.dart';
import 'package:linktsp_api/core/models/cart_item_model.dart';
import 'package:linktsp_api/core/models/config_delivery_period_model.dart';
import 'package:linktsp_api/core/models/summary_model.dart';

class CheckouCartSummaryModel {
  CheckouCartSummaryModel({
    this.summary,
    this.couponInfo,
    this.loyaltyPoints,
    this.configDeliveryPeriod,
    this.total,
  });

  List<Summary>? summary;
  CouponInfo? couponInfo;
  LoyaltyPoints? loyaltyPoints;
  ConfigDeliveryPeriod? configDeliveryPeriod;
  double? total;

  factory CheckouCartSummaryModel.fromJson(Map<String, dynamic> json) =>
      CheckouCartSummaryModel(
        summary: json["summary"] == null
            ? null
            : List<Summary>.from(
                json["summary"].map((x) => Summary.fromJson(x))),
        couponInfo: json["couponInfo"] == null
            ? null
            : CouponInfo.fromJson(json["couponInfo"]),
        loyaltyPoints: json["loyaltyPoints"] == null
            ? null
            : LoyaltyPoints.fromJson(json["loyaltyPoints"]),
        configDeliveryPeriod: json["configDeliveryPeriod"] == null
            ? null
            : ConfigDeliveryPeriod.fromJson(json["configDeliveryPeriod"]),
        total: json["total"] == null ? null : json["total"]!.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "summary": summary == null
            ? null
            : List<dynamic>.from(summary!.map((x) => x.toJson())),
        "couponInfo": couponInfo == null ? null : couponInfo!.toJson(),
        "loyaltyPoints": loyaltyPoints == null ? null : loyaltyPoints!.toJson(),
        "configDeliveryPeriod": configDeliveryPeriod == null
            ? null
            : configDeliveryPeriod!.toJson(),
        "total": total,
      };
}

class CouponInfo {
  CouponInfo({
    this.hasCoupon,
    this.couponCode,
  });

  bool? hasCoupon;
  String? couponCode;

  factory CouponInfo.fromJson(Map<String, dynamic> json) => CouponInfo(
        hasCoupon: json["hasCoupon"],
        couponCode: json["couponCode"],
      );

  Map<String, dynamic> toJson() => {
        "hasCoupon": hasCoupon,
        "couponCode": couponCode,
      };
}

class LoyaltyPoints {
  LoyaltyPoints({
    this.amountOfLoyaltyPointsUsed,
    this.amountOfMoneyGainedFromLoyaltyPoints,
    this.amountOfLoyaltyPointsGained,
    this.customerLoyaltyPoints,
    this.loyaltyPointsRedeemed,
    this.amountOfMoneyConverted,
    this.hasLoyaltyPoints,
    this.loyaltyEnabled,
    this.configLoyaltyPointsToMoney,
  });

  int? amountOfLoyaltyPointsUsed;
  int? amountOfMoneyGainedFromLoyaltyPoints;
  int? amountOfLoyaltyPointsGained;
  double? customerLoyaltyPoints;
  int? loyaltyPointsRedeemed;
  double? amountOfMoneyConverted;
  bool? hasLoyaltyPoints;
  bool? loyaltyEnabled;
  String? configLoyaltyPointsToMoney;

  factory LoyaltyPoints.fromJson(Map<String, dynamic> json) => LoyaltyPoints(
        amountOfLoyaltyPointsUsed: json["amountOfLoyaltyPointsUsed"],
        amountOfMoneyGainedFromLoyaltyPoints:
            json["amountOfMoneyGainedFromLoyaltyPoints"],
        amountOfLoyaltyPointsGained: json["amountOfLoyaltyPointsGained"],
        customerLoyaltyPoints: json["customerLoyaltyPoints"],
        loyaltyPointsRedeemed: json["loyaltyPointsRedeemed"],
        amountOfMoneyConverted: json["amountOfMoneyConverted"],
        hasLoyaltyPoints: json["hasLoyaltyPoints"],
        loyaltyEnabled: json["loyaltyEnabled"],
        configLoyaltyPointsToMoney: json["configLoyaltyPointsToMoney"],
      );

  Map<String, dynamic> toJson() => {
        "amountOfLoyaltyPointsUsed": amountOfLoyaltyPointsUsed,
        "amountOfMoneyGainedFromLoyaltyPoints":
            amountOfMoneyGainedFromLoyaltyPoints,
        "amountOfLoyaltyPointsGained": amountOfLoyaltyPointsGained,
        "customerLoyaltyPoints": customerLoyaltyPoints,
        "loyaltyPointsRedeemed": loyaltyPointsRedeemed,
        "amountOfMoneyConverted": amountOfMoneyConverted,
        "hasLoyaltyPoints": hasLoyaltyPoints,
        "loyaltyEnabled": loyaltyEnabled,
        "configLoyaltyPointsToMoney": configLoyaltyPointsToMoney,
      };
}

class PaymentOptionsModel {
  PaymentOptionsModel({
    this.id,
    this.code,
    this.title,
    this.additionalFees,
    this.hasCashLimit,
    this.cashLimit,
    this.cashLimitMsg,
    this.image,
    this.currencySymbol,
    this.allowPreOrder,
  });

  int? id;
  String? code;
  String? title;
  double? additionalFees;
  bool? hasCashLimit;
  dynamic cashLimit;
  dynamic cashLimitMsg;
  String? image;
  String? currencySymbol;
  bool? allowPreOrder;
  factory PaymentOptionsModel.fromJson(Map<String, dynamic> json) =>
      PaymentOptionsModel(
        id: json["id"],
        code: json["code"],
        title: json["title"],
        additionalFees: json["additionalFees"],
        hasCashLimit: json["hasCashLimit"],
        cashLimit: json["cashLimit"],
        cashLimitMsg: json["cashLimitMsg"],
        image: json["image"],
        currencySymbol: json["currencySymbol"],
        allowPreOrder: json["allowPreOrder"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "title": title,
        "additionalFees": additionalFees,
        "hasCashLimit": hasCashLimit,
        "cashLimit": cashLimit,
        "cashLimitMsg": cashLimitMsg,
        "image": image,
        "currencySymbol": currencySymbol,
        "allowPreOrder": allowPreOrder,
      };
}

class CheckoutReviewModel {
  CheckoutReviewModel({
    this.items,
    this.summary,
    this.address,
    this.paymentOption,
    this.total,
    this.configDeliveryPeriod,
  });

  List<CartItemModel>? items;
  List<Summary>? summary;
  AddressModel? address;
  PaymentOptionsModel? paymentOption;
  double? total;
  ConfigDeliveryPeriod? configDeliveryPeriod;

  factory CheckoutReviewModel.fromJson(Map<String, dynamic> json) =>
      CheckoutReviewModel(
        items: json["items"] == null
            ? null
            : List<CartItemModel>.from(
                json["items"].map((x) => CartItemModel.fromJson(x))),
        summary: json["summary"] == null
            ? null
            : List<Summary>.from(
                json["summary"].map((x) => Summary.fromJson(x))),
        address: json["address"] == null
            ? null
            : AddressModel.fromJson(json["address"]),
        paymentOption: json["paymentOption"] == null
            ? null
            : PaymentOptionsModel.fromJson(json["paymentOption"]),
        total: json["total"] == null ? null : json["total"]!.toDouble(),
        configDeliveryPeriod: json["configDeliveryPeriod"] == null
            ? null
            : ConfigDeliveryPeriod.fromJson(json["configDeliveryPeriod"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "summary": summary == null
            ? null
            : List<dynamic>.from(summary!.map((x) => x.toJson())),
        "address": address == null ? null : address!.toJson(),
        "paymentOption": paymentOption == null ? null : paymentOption!.toJson(),
        "total": total,
        "configDeliveryPeriod": configDeliveryPeriod == null
            ? null
            : configDeliveryPeriod!.toJson(),
      };
}

class PaymentFrameModel {
  PaymentFrameModel({
    this.code,
    this.referenceCode,
    this.frame,
    this.domain,
    this.confirmationPage,
    this.rejectionPage,
    this.paymentUrl,
    this.browser,
  });

  dynamic code;
  String? referenceCode;
  String? frame;
  String? domain;
  String? confirmationPage;
  String? rejectionPage;
  String? paymentUrl;
  dynamic browser;

  factory PaymentFrameModel.fromJson(Map<String, dynamic> json) =>
      PaymentFrameModel(
        code: json["code"],
        referenceCode: json["referenceCode"],
        frame: json["frame"],
        domain: json["domain"],
        confirmationPage: json["confirmationPage"],
        rejectionPage: json["rejectionPage"],
        paymentUrl: json["paymentURL"],
        browser: json["browser"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "referenceCode": referenceCode,
        "frame": frame,
        "domain": domain,
        "confirmationPage": confirmationPage,
        "rejectionPage": rejectionPage,
        "paymentURL": paymentUrl,
        "browser": browser,
      };
}

class OneClickOrderDetailsModel {
  OneClickOrderDetailsModel({
    this.codFees,
    this.shipmentFees,
    this.address,
    this.addressId,
    this.total,
    this.isOneClickOrder,
  });

  double? codFees;
  double? shipmentFees;
  String? address;
  int? addressId;
  double? total;
  bool? isOneClickOrder;

  factory OneClickOrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      OneClickOrderDetailsModel(
        codFees: json["codFees"],
        shipmentFees: json["shipmentFees"],
        address: json["address"],
        addressId: json["addressID"],
        total: json["total"] == null ? null : json["total"]!.toDouble(),
        isOneClickOrder: json["isOneClickOrder"],
      );

  Map<String, dynamic> toJson() => {
        "codFees": codFees,
        "shipmentFees": shipmentFees,
        "address": address,
        "addressID": addressId,
        "total": total,
        "isOneClickOrder": isOneClickOrder,
      };
}

// ignore: constant_identifier_names
enum BrowserEnum { Chrome, Safari, Firefox, Opera, InternetExplorer, Edge }
