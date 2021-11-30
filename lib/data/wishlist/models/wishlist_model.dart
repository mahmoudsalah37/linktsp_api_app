class WishlistProductsModel {
  WishlistProductsModel({
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

  bool? preOrder;
  dynamic availabilityDate;
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

  factory WishlistProductsModel.fromJson(Map<String, dynamic> json) =>
      WishlistProductsModel(
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
