// To parse this JSON data, do
//
//     final NewPageBlockModel = NewPageBlockModelFromJson(jsonString);

import 'package:linktsp_api/data/list/models/new_list_model.dart';

class NewPageBlockModel {
  NewPageBlockModel({
    this.length,
    this.items,
  });

  int? length;
  List<DataItem>? items;

  factory NewPageBlockModel.fromJson(Map<String, dynamic> json) =>
      NewPageBlockModel(
        length: json["length"] == null ? null : json["length"],
        items: json["items"] == null
            ? null
            : List<DataItem>.from(
                json["items"].map((x) => DataItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length == null ? null : length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class DataItem {
  DataItem({
    this.id,
    this.name,
    this.description,
    this.itemType,
    this.code,
    this.classification,
    this.items,
  });

  int? id;
  String? name;
  dynamic description;
  int? itemType;
  int? code;
  List<ItemItem>? items;
  Classification? classification;

  factory DataItem.fromJson(Map<String, dynamic> json) => DataItem(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"],
        itemType: json["itemType"] == null ? null : json["itemType"],
        code: json["code"] == null ? null : json["code"],
        classification: json["classification"] == null
            ? null
            : Classification.fromJson(json["classification"]),
        items: json["items"] == null
            ? null
            : List<ItemItem>.from(
                json["items"].map((x) => ItemItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description,
        "itemType": itemType == null ? null : itemType,
        "code": code == null ? null : code,
        "classification":
            classification == null ? null : classification!.toJson(),
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class Classification {
  Classification({
    this.id,
    this.nameAr,
    this.nameEn,
  });

  int? id;
  String? nameAr;
  String? nameEn;

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
        id: json["id"] == null ? null : json["id"],
        nameAr: json["nameAR"] == null ? null : json["nameAR"],
        nameEn: json["nameEN"] == null ? null : json["nameEN"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nameAR": nameAr == null ? null : nameAr,
        "nameEN": nameEn == null ? null : nameEn,
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
    this.listTypeId,
    this.listTypeName,
    this.product,
    this.itemSource,
    this.hasFilter,
    this.filterModel,
  });

  int? id;
  String? name;
  String? description;
  String? imageUrl;
  String? videoUrl;
  String? thumbImageUrl;
  int? listTypeId;
  dynamic listTypeName;
  Product? product;
  dynamic itemSource;
  bool? hasFilter;
  FilterModel? filterModel;

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        imageUrl: json["imageURL"] == null ? null : json["imageURL"],
        videoUrl: json["videoURL"] == null ? null : json["videoURL"],
        thumbImageUrl:
            json["thumbImageURL"] == null ? null : json["thumbImageURL"],
        listTypeId: json["listTypeID"] == null ? null : json["listTypeID"],
        listTypeName: json["listTypeName"],
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        itemSource: json["itemSource"],
        hasFilter: json["hasFilter"] == null ? null : json["hasFilter"],
        filterModel: json["filterModel"] == null
            ? null
            : FilterModel.fromJson(json["filterModel"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "imageURL": imageUrl == null ? null : imageUrl,
        "videoURL": videoUrl == null ? null : videoUrl,
        "thumbImageURL": thumbImageUrl == null ? null : thumbImageUrl,
        "listTypeID": listTypeId == null ? null : listTypeId,
        "listTypeName": listTypeName,
        "product": product == null ? null : product!.toJson(),
        "itemSource": itemSource,
        "hasFilter": hasFilter == null ? null : hasFilter,
        "filterModel": filterModel == null ? null : filterModel!.toJson(),
      };
}

class FilterModel {
  FilterModel({
    this.listType,
    this.listTypeId,
    this.languageId,
    this.minPrice,
    this.maxPrice,
    this.sortBy,
    this.keyword,
    this.brandsIDs,
    this.categoryIDs,
    this.colorIDs,
    this.sizeIDs,
    this.featureValues,
    this.hasDiscount,
    this.customerId,
    this.storeId,
    this.zoneId,
    this.pageIndex,
    this.rowCount,
    this.sortProp,
    this.sortDir,
  });

  int? listType;
  int? listTypeId;
  int? languageId;
  dynamic minPrice;
  dynamic maxPrice;
  SortBy? sortBy;
  dynamic keyword;
  List<dynamic>? brandsIDs;
  List<dynamic>? categoryIDs;
  List<dynamic>? colorIDs;
  List<dynamic>? sizeIDs;
  List<dynamic>? featureValues;
  dynamic hasDiscount;
  dynamic customerId;
  dynamic storeId;
  dynamic zoneId;
  int? pageIndex;
  int? rowCount;
  dynamic sortProp;
  dynamic sortDir;

  factory FilterModel.fromJson(Map<String, dynamic> json) => FilterModel(
        listType: json["listType"] == null ? null : json["listType"],
        listTypeId: json["listTypeID"] == null ? null : json["listTypeID"],
        languageId: json["languageID"] == null ? null : json["languageID"],
        minPrice: json["minPrice"],
        maxPrice: json["maxPrice"],
        sortBy:
            json["sortBy"] == null ? null : sortByValues.map![json["sortBy"]],
        keyword: json["keyword"],
        brandsIDs: json["brandsIDs"] == null
            ? null
            : List<dynamic>.from(json["brandsIDs"].map((x) => x)),
        categoryIDs: json["categoryIDs"] == null
            ? null
            : List<dynamic>.from(json["categoryIDs"].map((x) => x)),
        colorIDs: json["colorIDs"] == null
            ? null
            : List<dynamic>.from(json["colorIDs"].map((x) => x)),
        sizeIDs: json["sizeIDs"] == null
            ? null
            : List<dynamic>.from(json["sizeIDs"].map((x) => x)),
        featureValues: json["featureValues"] == null
            ? null
            : List<dynamic>.from(json["featureValues"].map((x) => x)),
        hasDiscount: json["hasDiscount"],
        customerId: json["customerID"],
        storeId: json["storeID"],
        zoneId: json["zoneID"],
        pageIndex: json["pageIndex"] == null ? null : json["pageIndex"],
        rowCount: json["rowCount"] == null ? null : json["rowCount"],
        sortProp: json["sortProp"],
        sortDir: json["sortDir"],
      );

  Map<String, dynamic> toJson() => {
        "listType": listType == null ? null : listType,
        "listTypeID": listTypeId == null ? null : listTypeId,
        "languageID": languageId == null ? null : languageId,
        "minPrice": minPrice,
        "maxPrice": maxPrice,
        "sortBy": sortBy == null ? null : sortByValues.reverse[sortBy],
        "keyword": keyword,
        "brandsIDs": brandsIDs == null
            ? null
            : List<dynamic>.from(brandsIDs!.map((x) => x)),
        "categoryIDs": categoryIDs == null
            ? null
            : List<dynamic>.from(categoryIDs!.map((x) => x)),
        "colorIDs": colorIDs == null
            ? null
            : List<dynamic>.from(colorIDs!.map((x) => x)),
        "sizeIDs":
            sizeIDs == null ? null : List<dynamic>.from(sizeIDs!.map((x) => x)),
        "featureValues": featureValues == null
            ? null
            : List<dynamic>.from(featureValues!.map((x) => x)),
        "hasDiscount": hasDiscount,
        "customerID": customerId,
        "storeID": storeId,
        "zoneID": zoneId,
        "pageIndex": pageIndex == null ? null : pageIndex,
        "rowCount": rowCount == null ? null : rowCount,
        "sortProp": sortProp,
        "sortDir": sortDir,
      };
}

enum SortBy { NEWARRIVALS }

final sortByValues = EnumValues({"newarrivals": SortBy.NEWARRIVALS});

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
    this.productDiscountList,
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
  DateTime? availabilityDate;
  dynamic croppedImageUrl;
  bool? enableCropping;
  int? colorOptions;
  int? colorId;
  int? sizeId;
  String? size;
  String? color;
  List<Size>? sizes;
  List<Color>? colors;
  List<ProductDiscountList>? productDiscountList;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        productCode: json["productCode"] == null ? null : json["productCode"],
        promoText: json["promoText"] == null ? null : json["promoText"],
        bogoPromoText:
            json["bogoPromoText"] == null ? null : json["bogoPromoText"],
        price: json["price"] == null
            ? null
            : double.tryParse(json["price"].toString()),
        finalPrice: json["finalPrice"] == null
            ? null
            : double.tryParse(json["finalPrice"].toString()),
        discountValue: json["discountValue"] == null
            ? null
            : double.tryParse(json["discountValue"].toString()),
        discountType: json["discountType"] == null
            ? null
            : double.tryParse(json["discountType"].toString()),
        isAddedtoWishlist: json["isAddedtoWishlist"] == null
            ? null
            : json["isAddedtoWishlist"],
        isOutOfStock:
            json["isOutOfStock"] == null ? null : json["isOutOfStock"],
        preOrder: json["preOrder"] == null ? null : json["preOrder"],
        availabilityDate: json["availabilityDate"] == null
            ? null
            : DateTime.parse(json["availabilityDate"]),
        croppedImageUrl: json["croppedImageURL"],
        enableCropping:
            json["enableCropping"] == null ? null : json["enableCropping"],
        colorOptions:
            json["colorOptions"] == null ? null : json["colorOptions"],
        colorId: json["colorID"] == null ? null : json["colorID"],
        sizeId: json["sizeID"] == null ? null : json["sizeID"],
        size: json["size"] == null ? null : json["size"],
        color: json["color"] == null ? null : json["color"],
        sizes: json["sizes"] == null
            ? null
            : List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        colors: json["colors"] == null
            ? null
            : List<Color>.from(json["colors"].map((x) => Color.fromJson(x))),
        productDiscountList: json["productDiscountList"] == null
            ? null
            : List<ProductDiscountList>.from(json["productDiscountList"]
                .map((x) => ProductDiscountList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "productCode": productCode == null ? null : productCode,
        "promoText": promoText == null ? null : promoText,
        "bogoPromoText": bogoPromoText == null ? null : bogoPromoText,
        "price": price == null ? null : price,
        "finalPrice": finalPrice == null ? null : finalPrice,
        "discountValue": discountValue == null ? null : discountValue,
        "discountType": discountType == null ? null : discountType,
        "isAddedtoWishlist":
            isAddedtoWishlist == null ? null : isAddedtoWishlist,
        "isOutOfStock": isOutOfStock == null ? null : isOutOfStock,
        "preOrder": preOrder == null ? null : preOrder,
        "availabilityDate": availabilityDate == null
            ? null
            : availabilityDate!.toIso8601String(),
        "croppedImageURL": croppedImageUrl,
        "enableCropping": enableCropping == null ? null : enableCropping,
        "colorOptions": colorOptions == null ? null : colorOptions,
        "colorID": colorId == null ? null : colorId,
        "sizeID": sizeId == null ? null : sizeId,
        "size": size == null ? null : size,
        "color": color == null ? null : color,
        "sizes": sizes == null
            ? null
            : List<dynamic>.from(sizes!.map((x) => x.toJson())),
        "colors": colors == null
            ? null
            : List<dynamic>.from(colors!.map((x) => x.toJson())),
        "productDiscountList": productDiscountList ??
            List<dynamic>.from(productDiscountList!.map((x) => x.toJson())),
      };
}

class Color {
  Color({
    this.id,
    this.name,
    this.title,
    this.hexa,
    this.isOutOfStock,
  });

  int? id;
  String? name;
  String? title;
  String? hexa;
  dynamic isOutOfStock;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        title: json["title"] == null ? null : json["title"],
        hexa: json["hexa"] == null ? null : json["hexa"],
        isOutOfStock: json["isOutOfStock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "title": title == null ? null : title,
        "hexa": hexa == null ? null : hexa,
        "isOutOfStock": isOutOfStock,
      };
}

class Size {
  Size({
    this.id,
    this.name,
    this.isOutOfStock,
  });

  int? id;
  String? name;
  dynamic isOutOfStock;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        isOutOfStock: json["isOutOfStock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "isOutOfStock": isOutOfStock,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap ?? {};
  }
}
