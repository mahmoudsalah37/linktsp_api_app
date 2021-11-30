class CartSkuModel {
  CartSkuModel({
    required this.skuid,
    required this.qty,
  });

  int? skuid;
  int? qty;

  factory CartSkuModel.fromJson(Map<String, dynamic> json) => CartSkuModel(
        skuid: json["skuid"],
        qty: json["qty"],
      );

  Map<String, dynamic> toJson() => {"skuid": skuid, "qty": qty};
}

class CartItemModel {
  CartItemModel({
    this.maxQty,
    this.imageId,
    this.freeBogo,
    this.discountBogoid,
    this.addedForDiscountBogo,
    this.stock,
    this.qty,
    this.minDeliveryPeriod,
    this.maxDeliveryPeriod,
    this.periodName,
    this.deliveryNote,
    this.preOrder,
    this.availabilityDate,
    this.id,
    this.productId,
    this.productCode,
    this.imageUrl,
    this.imageThumbUrl,
    this.title,
    this.seoTitle,
    this.isOutOfStock,
    this.price,
    this.finalPrice,
    this.hasDiscount,
    this.discountValue,
    this.discountType,
    this.promoText,
    this.bogoPromoText,
    this.croppedImageUrl,
    this.enableCropping,
    this.size,
    this.sizeId,
    this.colorHexaCode,
    this.color,
    this.colorId,
  });

  int? maxQty;
  int? imageId;
  bool? freeBogo;
  dynamic discountBogoid;
  bool? addedForDiscountBogo;
  int? stock;
  int? qty;
  int? minDeliveryPeriod;
  int? maxDeliveryPeriod;
  String? periodName;
  String? deliveryNote;
  bool? preOrder;
  String? availabilityDate;
  int? id;
  int? productId;
  dynamic productCode;
  String? imageUrl;
  String? imageThumbUrl;
  String? title;
  String? seoTitle;
  bool? isOutOfStock;
  double? price;
  double? finalPrice;
  bool? hasDiscount;
  double? discountValue;
  int? discountType;
  String? promoText;
  String? bogoPromoText;
  String? croppedImageUrl;
  bool? enableCropping;
  String? size;
  int? sizeId;
  String? colorHexaCode;
  String? color;
  int? colorId;

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        maxQty: json["maxQty"],
        imageId: json["imageID"],
        freeBogo: json["freeBOGO"],
        discountBogoid: json["discountBOGOID"],
        addedForDiscountBogo: json["addedForDiscountBOGO"],
        stock: json["stock"],
        qty: json["qty"],
        minDeliveryPeriod: json["minDeliveryPeriod"],
        maxDeliveryPeriod: json["maxDeliveryPeriod"],
        periodName: json["periodName"],
        deliveryNote: json["deliveryNote"],
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        id: json["id"],
        productId: json["productID"],
        productCode: json["productCode"],
        imageUrl: json["imageUrl"],
        imageThumbUrl: json["imageThumbUrl"],
        title: json["title"],
        seoTitle: json["seoTitle"],
        isOutOfStock: json["isOutOfStock"],
        price: json["price"] == null ? null : json["price"]!.toDouble(),
        finalPrice:
            json["finalPrice"] == null ? null : json["finalPrice"]!.toDouble(),
        hasDiscount: json["hasDiscount"],
        discountValue: json["discountValue"],
        discountType: json["discountType"],
        promoText: json["promoText"],
        bogoPromoText: json["bogoPromoText"],
        croppedImageUrl: json["croppedImageURL"],
        enableCropping: json["enableCropping"],
        size: json["size"],
        sizeId: json["sizeID"],
        colorHexaCode: json["colorHexaCode"],
        color: json["color"],
        colorId: json["colorID"],
      );

  Map<String, dynamic> toJson() => {
        "maxQty": maxQty,
        "imageID": imageId,
        "freeBOGO": freeBogo,
        "discountBOGOID": discountBogoid,
        "addedForDiscountBOGO": addedForDiscountBogo,
        "stock": stock,
        "qty": qty,
        "minDeliveryPeriod": minDeliveryPeriod,
        "maxDeliveryPeriod": maxDeliveryPeriod,
        "periodName": periodName,
        "deliveryNote": deliveryNote,
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
        "id": id,
        "productID": productId,
        "productCode": productCode,
        "imageUrl": imageUrl,
        "imageThumbUrl": imageThumbUrl,
        "title": title,
        "seoTitle": seoTitle,
        "isOutOfStock": isOutOfStock,
        "price": price,
        "finalPrice": finalPrice,
        "hasDiscount": hasDiscount,
        "discountValue": discountValue,
        "discountType": discountType,
        "promoText": promoText,
        "bogoPromoText": bogoPromoText,
        "croppedImageURL": croppedImageUrl,
        "enableCropping": enableCropping,
        "size": size,
        "sizeID": sizeId,
        "colorHexaCode": colorHexaCode,
        "color": color,
        "colorID": colorId,
      };
}

class PreOrderMessageModel {
  PreOrderMessageModel({
    this.message,
    this.cartItems,
  });

  String? message;
  List<CartItemModel>? cartItems;

  factory PreOrderMessageModel.fromJson(Map<String, dynamic> json) =>
      PreOrderMessageModel(
        message: json["message"],
        cartItems: json["cartItems"] == null
            ? null
            : List<CartItemModel>.from(
                json["cartItems"].map((x) => CartItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "cartItems": cartItems == null
            ? null
            : List<dynamic>.from(cartItems!.map((x) => x.toJson())),
      };
}

class CartSummaryModel {
  CartSummaryModel({
    this.items,
    this.summary,
    this.configDeliveryPeriod,
    this.enablePickAtStore,
  });

  List<CartItemModel>? items;
  List<Summary>? summary;
  ConfigDeliveryPeriod? configDeliveryPeriod;
  bool? enablePickAtStore;

  factory CartSummaryModel.fromJson(Map<String, dynamic> json) =>
      CartSummaryModel(
        items: json["items"] == null
            ? null
            : List<CartItemModel>.from(
                json["items"].map((x) => CartItemModel.fromJson(x))),
        summary: json["summary"] == null
            ? null
            : List<Summary>.from(
                json["summary"].map((x) => Summary.fromJson(x))),
        configDeliveryPeriod: json["configDeliveryPeriod"] == null
            ? null
            : ConfigDeliveryPeriod.fromJson(json["configDeliveryPeriod"]),
        enablePickAtStore: json["enablePickAtStore"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "summary": summary == null
            ? null
            : List<dynamic>.from(summary!.map((x) => x.toJson())),
        "configDeliveryPeriod": configDeliveryPeriod == null
            ? null
            : configDeliveryPeriod!.toJson(),
        "enablePickAtStore": enablePickAtStore,
      };
}

class ConfigDeliveryPeriod {
  ConfigDeliveryPeriod({
    this.min,
    this.max,
    this.unit,
    this.periodName,
    this.preOrder,
    this.availabilityDate,
    this.deliveryNote,
  });

  int? min;
  int? max;
  dynamic unit;
  String? periodName;
  bool? preOrder;
  dynamic availabilityDate;
  String? deliveryNote;

  factory ConfigDeliveryPeriod.fromJson(Map<String, dynamic> json) =>
      ConfigDeliveryPeriod(
        min: json["min"],
        max: json["max"],
        unit: json["unit"],
        periodName: json["periodName"],
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        deliveryNote: json["deliveryNote"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
        "unit": unit,
        "periodName": periodName,
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
        "deliveryNote": deliveryNote,
      };
}

class Summary {
  Summary({
    this.title,
    this.value,
    this.additionalInfo,
    this.currencySymbol,
  });

  String? title;
  String? value;
  String? additionalInfo;
  String? currencySymbol;

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        title: json["title"],
        value: json["value"],
        additionalInfo: json["additionalInfo"],
        currencySymbol: json["currencySymbol"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
        "additionalInfo": additionalInfo,
        "currencySymbol": currencySymbol,
      };
}
