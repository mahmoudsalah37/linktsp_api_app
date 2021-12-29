// To parse this JSON data, do
//
//     final productDetailsModel = productDetailsModelFromJson(jsonString);

import 'dart:convert';

import 'package:linktsp_api/core/models/color_model.dart';
import 'package:linktsp_api/core/models/feature_model.dart';
import 'package:linktsp_api/core/models/size_model.dart';
import 'package:linktsp_api/data/reviews/models/review_model.dart';

ProductDetailsModel productDetailsModelFromJson(String str) =>
    ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) =>
    json.encode(data.toJson());

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
    this.productRecentTwoReview =
        const ProductRecentTwoReview(items: [], length: 0, reviewsCount: 0),
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
    this.brandName,
  });

  final String? details;
  final String? shortDescription;
  final int? colorId;
  final int? sizeId;
  final List<Brand>? categories;
  final Brand? brand;
  final bool? isAddedtoWishlist;
  final List<String>? imageList;
  final int? maxQty;
  final bool? reviewVisibility;
  final bool? showOneClickOrder;
  final int? minDeliveryPeriod;
  final int? maxDeliveryPeriod;
  final String? periodName;
  final dynamic deliveryNote;
  final int? remaining;
  final String? productCode;
  final String? skuCode;
  final int? colorOptions;
  final List<Feature>? features;
  final ProductRecentTwoReview productRecentTwoReview;
  final double? rating;
  final List<Size>? sizes;
  final List<ColorModel>? colors;
  final bool? preOrder;
  final dynamic availabilityDate;
  final int? id;
  final int? productId;
  final String? imageUrl;
  final String? imageThumbUrl;
  final String? title;
  final String? seoTitle;
  final bool? isOutOfStock;
  final double? price;
  final double? finalPrice;
  final bool? hasDiscount;
  final double? discountValue;
  final int? discountType;
  final String? promoText;
  final String? bogoPromoText;
  final String? croppedImageUrl;
  final bool? enableCropping;
  final String? size;
  final String? colorHexaCode;
  final String? color;
  final String? brandName;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        details: json["details"],
        shortDescription: json["shortDescription"],
        colorId: json["colorID"],
        sizeId: json["sizeID"],
        categories:
            List<Brand>.from(json["categories"].map((x) => Brand.fromJson(x))),
        brand: Brand.fromJson(json["brand"]),
        isAddedtoWishlist: json["isAddedtoWishlist"],
        imageList: List<String>.from(json["imageList"].map((x) => x)),
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
        features: List<Feature>.from(
            json["features"].map((x) => Feature.fromJson(x))),
        productRecentTwoReview: json["product_RecentTwo_Review"] == null
            ? const ProductRecentTwoReview(
                items: [], length: 0, reviewsCount: 0)
            : ProductRecentTwoReview.fromJson(json["product_RecentTwo_Review"]),
        rating: json["rating"],
        sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        colors: List<ColorModel>.from(
            json["colors"].map((x) => ColorModel.fromJson(x))),
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        id: json["id"],
        productId: json["productID"],
        imageUrl: json["imageUrl"],
        imageThumbUrl: json["imageThumbUrl"],
        title: json["title"],
        seoTitle: json["seoTitle"],
        isOutOfStock: json["isOutOfStock"],
        price: json["price"],
        finalPrice: json["finalPrice"],
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
        brandName: json["brandName"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
        "shortDescription": shortDescription,
        "colorID": colorId,
        "sizeID": sizeId,
        "categories":
            List<dynamic>.from(categories?.map((x) => x.toJson()) ?? []),
        "brand": brand?.toJson(),
        "isAddedtoWishlist": isAddedtoWishlist,
        "imageList": List<dynamic>.from(imageList!.map((x) => x)),
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
        "features": List<dynamic>.from(features?.map((x) => x.toJson()) ?? []),
        "product_RecentTwo_Review": productRecentTwoReview.toJson(),
        "rating": rating,
        "sizes": List<dynamic>.from(sizes?.map((x) => x.toJson()) ?? []),
        "colors": List<dynamic>.from(colors?.map((x) => x.toJson()) ?? []),
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
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
        "brandName": brandName,
      };
}

class Brand {
  Brand({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class ProductRecentTwoReview {
  const ProductRecentTwoReview({
    this.reviewsCount,
    // required this.reviewsAvgRate,
    this.length,
    this.items = const [],
  });

  final int? reviewsCount;
  // final double? reviewsAvgRate;
  final int? length;
  final List<ItemReview> items;

  factory ProductRecentTwoReview.fromJson(Map<String, dynamic> json) =>
      ProductRecentTwoReview(
        reviewsCount: json["reviewsCount"],
        // reviewsAvgRate: json["reviewsAvgRate"]?.toDouble(),
        length: json["length"],
        items: json["items"] != null
            ? List<ItemReview>.from(
                json["items"].map((x) => ItemReview.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "reviewsCount": reviewsCount,
        // "reviewsAvgRate": reviewsAvgRate,
        "length": length,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}
