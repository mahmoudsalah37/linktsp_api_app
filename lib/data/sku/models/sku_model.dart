import 'package:linktsp_api/data/list/models/color_model.dart';
import 'package:linktsp_api/data/list/models/size_model.dart';

class ProductDetailsModel {
  ProductDetailsModel({
    this.details,
    this.shortDescription,
    this.colorId,
    this.sizeId,
    this.categories,
    this.brand,
    this.isAddedtoWishlist,
    this.imageList,
    this.maxQty,
    this.reviewVisibility,
    this.showOneClickOrder,
    this.minDeliveryPeriod,
    this.maxDeliveryPeriod,
    this.periodName,
    this.deliveryNote,
    this.remaining,
    this.productCode,
    this.skuCode,
    this.colorOptions,
    this.features,
    this.rating,
    this.sizes,
    this.colors,
    this.preOrder,
    this.availabilityDate,
    this.id,
    this.productId,
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
    this.colorHexaCode,
    this.color,
  });

  String? details;
  String? shortDescription;
  int? colorId;
  int? sizeId;
  List<Brand>? categories;
  Brand? brand;
  bool? isAddedtoWishlist;
  List<String>? imageList;
  int? maxQty;
  bool? reviewVisibility;
  bool? showOneClickOrder;
  int? minDeliveryPeriod;
  int? maxDeliveryPeriod;
  String? periodName;
  String? deliveryNote;
  int? remaining;
  String? productCode;
  String? skuCode;
  int? colorOptions;
  List<Feature>? features;
  double? rating;
  List<Size>? sizes;
  List<ColorModel>? colors;
  bool? preOrder;
  DateTime? availabilityDate;
  int? id;
  int? productId;
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
  String? colorHexaCode;
  String? color;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        details: json["details"],
        shortDescription: json["shortDescription"],
        colorId: json["colorID"],
        sizeId: json["sizeID"],
        categories: json["categories"] == null
            ? null
            : List<Brand>.from(
                json["categories"].map((x) => Brand.fromJson(x))),
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        isAddedtoWishlist: json["isAddedtoWishlist"],
        imageList: json["imageList"] == null
            ? null
            : List<String>.from(json["imageList"].map((x) => x)),
        maxQty: json["maxQty"],
        reviewVisibility: json["reviewVisibility"],
        showOneClickOrder: json["showOneClickOrder"],
        minDeliveryPeriod: json["minDeliveryPeriod"],
        maxDeliveryPeriod: json["maxDeliveryPeriod"],
        periodName: json["periodName"],
        deliveryNote: json["deliveryNote"],
        remaining: json["remaining"],
        productCode: json["productCode"],
        skuCode: json["skuCode"],
        colorOptions: json["colorOptions"],
        features: json["features"] == null
            ? null
            : List<Feature>.from(
                json["features"].map((x) => Feature.fromJson(x))),
        rating: json["rating"],
        sizes: json["sizes"] == null
            ? null
            : List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        colors: json["colors"] == null
            ? null
            : List<ColorModel>.from(
                json["colors"].map((x) => ColorModel.fromJson(x))),
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"] == null
            ? null
            : DateTime.parse(json["availabilityDate"]),
        id: json["id"],
        productId: json["productID"],
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
        colorHexaCode: json["colorHexaCode"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
        "shortDescription": shortDescription,
        "colorID": colorId,
        "sizeID": sizeId,
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "brand": brand == null ? null : brand!.toJson(),
        "isAddedtoWishlist": isAddedtoWishlist,
        "imageList": imageList == null
            ? null
            : List<dynamic>.from(imageList!.map((x) => x)),
        "maxQty": maxQty,
        "reviewVisibility": reviewVisibility,
        "showOneClickOrder": showOneClickOrder,
        "minDeliveryPeriod": minDeliveryPeriod,
        "maxDeliveryPeriod": maxDeliveryPeriod,
        "periodName": periodName,
        "deliveryNote": deliveryNote,
        "remaining": remaining,
        "productCode": productCode,
        "skuCode": skuCode,
        "colorOptions": colorOptions,
        "features": features == null
            ? null
            : List<dynamic>.from(features!.map((x) => x.toJson())),
        "rating": rating,
        "sizes": sizes == null
            ? null
            : List<dynamic>.from(sizes!.map((x) => x.toJson())),
        "colors": colors == null
            ? null
            : List<dynamic>.from(colors!.map((x) => x.toJson())),
        "preOrder": preOrder,
        "availabilityDate": availabilityDate == null
            ? null
            : availabilityDate!.toIso8601String(),
        "id": id,
        "productID": productId,
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
        "colorHexaCode": colorHexaCode,
        "color": color,
      };
}

class Brand {
  Brand({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Feature {
  Feature({
    this.name,
    this.value,
    this.imageUrl,
  });

  String? name;
  String? value;
  String? imageUrl;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        name: json["name"],
        value: json["value"],
        imageUrl: json["imageURL"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "imageURL": imageUrl,
      };
}
