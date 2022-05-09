import '../../../linktsp_api.dart';

class CartModelV3 {
  List<CartItemModel>? cartViewModel;
  Summary? summary;
  bool? preOrder;
  dynamic availabilityDate;
  int? id;
  int? productID;
  dynamic productCode;
  dynamic imageUrl;
  dynamic imageThumbUrl;
  dynamic title;
  dynamic seoTitle;
  bool? isOutOfStock;
  dynamic price;
  dynamic finalPrice;
  dynamic hasDiscount;
  dynamic discountValue;
  dynamic discountType;
  dynamic promoText;
  dynamic bogoPromoText;
  dynamic croppedImageURL;
  bool? enableCropping;
  dynamic size;
  int? sizeID;
  dynamic colorHexaCode;
  dynamic color;
  int? colorID;
  dynamic brandName;

  CartModelV3(
      {cartViewModel,
      summary,
      preOrder,
      availabilityDate,
      id,
      productID,
      productCode,
      imageUrl,
      imageThumbUrl,
      title,
      seoTitle,
      isOutOfStock,
      price,
      finalPrice,
      hasDiscount,
      discountValue,
      discountType,
      promoText,
      bogoPromoText,
      croppedImageURL,
      enableCropping,
      size,
      sizeID,
      colorHexaCode,
      color,
      colorID,
      brandName});

  CartModelV3.fromJson(Map<String, dynamic> json) {
    if (json['cartViewModel'] != null) {
      cartViewModel = <CartItemModel>[];
      json['cartViewModel'].forEach((v) {
        cartViewModel!.add(CartItemModel.fromJson(v));
      });
    }
    summary =
        json['summary'] != null ? Summary.fromJson(json['summary']) : null;
    preOrder = json['preOrder'];
    availabilityDate = json['availabilityDate'];
    id = json['id'];
    productID = json['productID'];
    productCode = json['productCode'];
    imageUrl = json['imageUrl'];
    imageThumbUrl = json['imageThumbUrl'];
    title = json['title'];
    seoTitle = json['seoTitle'];
    isOutOfStock = json['isOutOfStock'];
    price = json['price'];
    finalPrice = json['finalPrice'];
    hasDiscount = json['hasDiscount'];
    discountValue = json['discountValue'];
    discountType = json['discountType'];
    promoText = json['promoText'];
    bogoPromoText = json['bogoPromoText'];
    croppedImageURL = json['croppedImageURL'];
    enableCropping = json['enableCropping'];
    size = json['size'];
    sizeID = json['sizeID'];
    colorHexaCode = json['colorHexaCode'];
    color = json['color'];
    colorID = json['colorID'];
    brandName = json['brandName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cartViewModel != null) {
      data['cartViewModel'] = cartViewModel!.map((v) => v.toJson()).toList();
    }
    if (summary != null) {
      data['summary'] = summary!.toJson();
    }
    data['preOrder'] = preOrder;
    data['availabilityDate'] = availabilityDate;
    data['id'] = id;
    data['productID'] = productID;
    data['productCode'] = productCode;
    data['imageUrl'] = imageUrl;
    data['imageThumbUrl'] = imageThumbUrl;
    data['title'] = title;
    data['seoTitle'] = seoTitle;
    data['isOutOfStock'] = isOutOfStock;
    data['price'] = price;
    data['finalPrice'] = finalPrice;
    data['hasDiscount'] = hasDiscount;
    data['discountValue'] = discountValue;
    data['discountType'] = discountType;
    data['promoText'] = promoText;
    data['bogoPromoText'] = bogoPromoText;
    data['croppedImageURL'] = croppedImageURL;
    data['enableCropping'] = enableCropping;
    data['size'] = size;
    data['sizeID'] = sizeID;
    data['colorHexaCode'] = colorHexaCode;
    data['color'] = color;
    data['colorID'] = colorID;
    data['brandName'] = brandName;
    return data;
  }
}

class ProductDiscountList {
  String? key;
  String? value;

  ProductDiscountList({key, value});

  ProductDiscountList.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class Summary {
  double? total;
  double? subTotal;
  double? totalShipment;
  double? couponValue;
  dynamic couponType;
  dynamic couponCode;
  bool? hasCoupon;
  bool? hasPersonalDiscount;
  dynamic personalDiscount;
  double? personalDiscountValue;
  double? originalSubTotal;
  double? discountValue;
  bool? hasCartAmountTriggeredDiscount;
  dynamic cartAmountTriggeredDiscount;
  double? cartAmountTriggeredDiscountValue;
  bool? hasProfileBasedTriggeredDiscount;
  dynamic profileBasedTriggeredDiscountName;
  dynamic profileBasedTriggeredDiscount;
  double? profileBasedTriggeredDiscountValue;
  bool? hasFreeShipment;
  bool? hasCartGift;
  bool? hasDiscount;
  int? amountOfLoyaltyPointsUsed;
  int? amountOfMoneyGainedFromLoyaltyPoints;
  int? amountOfLoyaltyPointsGained;
  dynamic customerLoyaltyPoints;
  int? loyaltyPointsRedeemed;
  double? amountOfMoneyConverted;
  bool? hasLoyaltyPoints;
  bool? loyaltyEnabled;
  dynamic configLoyaltyPointsToMoney;
  double? taxPercentage;
  double? taxValue;
  bool? preOrder;
  dynamic availabilityDate;
  int? minDeliveryPeriod;
  int? maxDeliveryPeriod;
  String? periodName;
  String? deliveryNote;
  bool? displayTax;
  dynamic loyaltyPointMultiplier;
  double? loyaltyPointEquivalentAmount;

  Summary({
    total,
    subTotal,
    totalShipment,
    couponValue,
    couponType,
    couponCode,
    hasCoupon,
    hasPersonalDiscount,
    personalDiscount,
    personalDiscountValue,
    originalSubTotal,
    discountValue,
    hasCartAmountTriggeredDiscount,
    cartAmountTriggeredDiscount,
    cartAmountTriggeredDiscountValue,
    hasProfileBasedTriggeredDiscount,
    profileBasedTriggeredDiscountName,
    profileBasedTriggeredDiscount,
    profileBasedTriggeredDiscountValue,
    hasFreeShipment,
    hasCartGift,
    hasDiscount,
    amountOfLoyaltyPointsUsed,
    amountOfMoneyGainedFromLoyaltyPoints,
    amountOfLoyaltyPointsGained,
    customerLoyaltyPoints,
    loyaltyPointsRedeemed,
    amountOfMoneyConverted,
    hasLoyaltyPoints,
    loyaltyEnabled,
    configLoyaltyPointsToMoney,
    taxPercentage,
    taxValue,
    preOrder,
    availabilityDate,
    minDeliveryPeriod,
    maxDeliveryPeriod,
    periodName,
    deliveryNote,
    displayTax,
    loyaltyPointMultiplier,
    loyaltyPointEquivalentAmount,
  });

  Summary.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    subTotal = json['subTotal'];
    totalShipment = json['totalShipment'];
    couponValue = json['couponValue'];
    couponType = json['couponType'];
    couponCode = json['couponCode'];
    hasCoupon = json['hasCoupon'];
    hasPersonalDiscount = json['hasPersonalDiscount'];
    personalDiscount = json['personalDiscount'];
    personalDiscountValue = json['personalDiscountValue'];
    originalSubTotal = json['originalSubTotal'];
    discountValue = json['discountValue'];
    hasCartAmountTriggeredDiscount = json['hasCartAmountTriggeredDiscount'];
    cartAmountTriggeredDiscount = json['cartAmountTriggeredDiscount'];
    cartAmountTriggeredDiscountValue = json['cartAmountTriggeredDiscountValue'];
    hasProfileBasedTriggeredDiscount = json['hasProfileBasedTriggeredDiscount'];
    profileBasedTriggeredDiscountName =
        json['profileBasedTriggeredDiscountName'];
    profileBasedTriggeredDiscount = json['profileBasedTriggeredDiscount'];
    profileBasedTriggeredDiscountValue =
        json['profileBasedTriggeredDiscountValue'];
    hasFreeShipment = json['hasFreeShipment'];
    hasCartGift = json['hasCartGift'];
    hasDiscount = json['hasDiscount'];

    amountOfLoyaltyPointsUsed = json['amountOfLoyaltyPointsUsed'];
    amountOfMoneyGainedFromLoyaltyPoints =
        json['amountOfMoneyGainedFromLoyaltyPoints'];
    amountOfLoyaltyPointsGained = json['amountOfLoyaltyPointsGained'];
    customerLoyaltyPoints = json['customerLoyaltyPoints'];
    loyaltyPointsRedeemed = json['loyaltyPointsRedeemed'];
    amountOfMoneyConverted = json['amountOfMoneyConverted'];
    hasLoyaltyPoints = json['hasLoyaltyPoints'];
    loyaltyEnabled = json['loyaltyEnabled'];
    configLoyaltyPointsToMoney = json['configLoyaltyPointsToMoney'];
    taxPercentage = json['taxPercentage'];
    taxValue = json['taxValue'];
    preOrder = json['preOrder'];
    availabilityDate = json['availabilityDate'];
    minDeliveryPeriod = json['minDeliveryPeriod'];
    maxDeliveryPeriod = json['maxDeliveryPeriod'];
    periodName = json['periodName'];
    deliveryNote = json['deliveryNote'];
    displayTax = json['displayTax'];
    loyaltyPointMultiplier = json['loyaltyPointMultiplier'];
    loyaltyPointEquivalentAmount = json['loyaltyPointEquivalentAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['subTotal'] = subTotal;
    data['totalShipment'] = totalShipment;
    data['couponValue'] = couponValue;
    data['couponType'] = couponType;
    data['couponCode'] = couponCode;
    data['hasCoupon'] = hasCoupon;
    data['hasPersonalDiscount'] = hasPersonalDiscount;
    data['personalDiscount'] = personalDiscount;
    data['personalDiscountValue'] = personalDiscountValue;
    data['originalSubTotal'] = originalSubTotal;
    data['discountValue'] = discountValue;
    data['hasCartAmountTriggeredDiscount'] = hasCartAmountTriggeredDiscount;
    data['cartAmountTriggeredDiscount'] = cartAmountTriggeredDiscount;
    data['cartAmountTriggeredDiscountValue'] = cartAmountTriggeredDiscountValue;
    data['hasProfileBasedTriggeredDiscount'] = hasProfileBasedTriggeredDiscount;
    data['profileBasedTriggeredDiscountName'] =
        profileBasedTriggeredDiscountName;
    data['profileBasedTriggeredDiscount'] = profileBasedTriggeredDiscount;
    data['profileBasedTriggeredDiscountValue'] =
        profileBasedTriggeredDiscountValue;
    data['hasFreeShipment'] = hasFreeShipment;
    data['hasCartGift'] = hasCartGift;
    data['hasDiscount'] = hasDiscount;

    data['amountOfLoyaltyPointsUsed'] = amountOfLoyaltyPointsUsed;
    data['amountOfMoneyGainedFromLoyaltyPoints'] =
        amountOfMoneyGainedFromLoyaltyPoints;
    data['amountOfLoyaltyPointsGained'] = amountOfLoyaltyPointsGained;
    data['customerLoyaltyPoints'] = customerLoyaltyPoints;
    data['loyaltyPointsRedeemed'] = loyaltyPointsRedeemed;
    data['amountOfMoneyConverted'] = amountOfMoneyConverted;
    data['hasLoyaltyPoints'] = hasLoyaltyPoints;
    data['loyaltyEnabled'] = loyaltyEnabled;
    data['configLoyaltyPointsToMoney'] = configLoyaltyPointsToMoney;
    data['taxPercentage'] = taxPercentage;
    data['taxValue'] = taxValue;
    data['preOrder'] = preOrder;
    data['availabilityDate'] = availabilityDate;
    data['minDeliveryPeriod'] = minDeliveryPeriod;
    data['maxDeliveryPeriod'] = maxDeliveryPeriod;
    data['periodName'] = periodName;
    data['deliveryNote'] = deliveryNote;
    data['displayTax'] = displayTax;
    data['loyaltyPointMultiplier'] = loyaltyPointMultiplier;
    data['loyaltyPointEquivalentAmount'] = loyaltyPointEquivalentAmount;

    return data;
  }
}
