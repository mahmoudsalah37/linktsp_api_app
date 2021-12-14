import 'package:linktsp_api/core/models/color_model.dart';
import 'package:linktsp_api/core/models/size_model.dart';

class PageBlockModel {
  PageBlockModel({
    this.length,
    this.items,
  });

  int? length;
  List<PageBlockModelItem>? items;

  factory PageBlockModel.fromJson(Map<String, dynamic> json) => PageBlockModel(
        length: json["length"],
        items: json["items"] == null
            ? null
            : List<PageBlockModelItem>.from(
                json["items"].map((x) => PageBlockModelItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class PageBlockModelItem {
  PageBlockModelItem({
    this.id,
    this.name,
    this.description,
    this.itemType,
    this.code,
    this.items,
  });

  int? id;
  String? name;
  String? description;
  int? itemType;
  int? code;
  List<ItemItem>? items;

  factory PageBlockModelItem.fromJson(Map<String, dynamic> json) =>
      PageBlockModelItem(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        itemType: json["itemType"],
        code: json["code"],
        items: json["items"] == null
            ? null
            : List<ItemItem>.from(
                json["items"].map((x) => ItemItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "itemType": itemType,
        "code": code,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class ItemItem {
  ItemItem({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.videoUrl,
    this.thumbImageUrl,
    this.listType,
    this.product,
    this.itemSource,
    this.hasFilter,
  });

  int? id;
  String? name;
  String? description;
  String? imageUrl;
  String? videoUrl;
  String? thumbImageUrl;
  int? listType;
  Product? product;
  int? itemSource;
  bool? hasFilter;

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["imageURL"],
        videoUrl: json["videoURL"],
        thumbImageUrl: json["thumbImageURL"],
        listType: json["listType"],
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        itemSource: json["itemSource"],
        hasFilter: json["hasFilter"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "imageURL": imageUrl,
        "videoURL": videoUrl,
        "thumbImageURL": thumbImageUrl,
        "listType": listType,
        "product": product == null ? null : product!.toJson(),
        "itemSource": itemSource,
        "hasFilter": hasFilter,
      };
}

class Product {
  Product({
    this.id,
    this.productCode,
    this.promoText,
    this.bogoPromoText,
    this.price,
    this.finalPrice,
    this.discountValue,
    this.discountType,
    this.isAddedtoWishlist,
    this.isOutOfStock,
    this.preOrder,
    this.availabilityDate,
    this.croppedImageUrl,
    this.enableCropping,
    this.colorOptions,
    this.colorId,
    this.sizeId,
    this.size,
    this.color,
    this.sizes,
    this.colors,
  });

  int? id;
  String? productCode;
  String? promoText;
  String? bogoPromoText;
  double? price;
  double? finalPrice;
  double? discountValue;
  double? discountType;
  bool? isAddedtoWishlist;
  bool? isOutOfStock;
  bool? preOrder;
  String? availabilityDate;
  String? croppedImageUrl;
  bool? enableCropping;
  int? colorOptions;
  int? colorId;
  int? sizeId;
  String? size;
  String? color;
  List<Size>? sizes;
  List<ColorModel>? colors;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        productCode: json["productCode"],
        promoText: json["promoText"],
        bogoPromoText: json["bogoPromoText"],
        price: json["price"] == null ? null : json["price"]!.toDouble(),
        finalPrice:
            json["finalPrice"] == null ? null : json["finalPrice"]!.toDouble(),
        discountValue: json["discountValue"],
        discountType: json["discountType"],
        isAddedtoWishlist: json["isAddedtoWishlist"],
        isOutOfStock: json["isOutOfStock"],
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        croppedImageUrl: json["croppedImageURL"],
        enableCropping: json["enableCropping"],
        colorOptions: json["colorOptions"],
        colorId: json["colorID"],
        sizeId: json["sizeID"],
        size: json["size"],
        color: json["color"],
        sizes: json["sizes"] == null
            ? null
            : List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        colors: json["colors"] == null
            ? null
            : List<ColorModel>.from(
                json["colors"].map((x) => ColorModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "productCode": productCode,
        "promoText": promoText,
        "bogoPromoText": bogoPromoText,
        "price": price,
        "finalPrice": finalPrice,
        "discountValue": discountValue,
        "discountType": discountType,
        "isAddedtoWishlist": isAddedtoWishlist,
        "isOutOfStock": isOutOfStock,
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
        "croppedImageURL": croppedImageUrl,
        "enableCropping": enableCropping,
        "colorOptions": colorOptions,
        "colorID": colorId,
        "sizeID": sizeId,
        "size": size,
        "color": color,
        "sizes": sizes == null
            ? null
            : List<dynamic>.from(sizes!.map((x) => x.toJson())),
        "colors": colors == null
            ? null
            : List<dynamic>.from(colors!.map((x) => x.toJson())),
      };
}

class BrandsModel {
  BrandsModel({
    this.id,
    this.title = '',
    this.imageUrl,
  });

  int? id;
  String title;
  String? imageUrl;

  factory BrandsModel.fromJson(Map<String, dynamic> json) => BrandsModel(
        id: json["id"],
        title: json["title"] ?? '',
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "imageUrl": imageUrl,
      };
}
