import 'color_model.dart';
import 'size_model.dart';

class ListModel {
  ListModel({
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
    this.storeId,
    this.zoneId,
    this.pageIndex,
    this.rowCount,
    this.sortProp,
    this.sortDir,
  });

  String? listType;
  int? listTypeId;
  int? languageId;
  int? minPrice;
  int? maxPrice;
  String? sortBy;
  String? keyword;
  List<int>? brandsIDs;
  List<int>? categoryIDs;
  List<int>? colorIDs;
  List<int>? sizeIDs;
  List<FeatureValue>? featureValues;
  bool? hasDiscount;
  int? storeId;
  int? zoneId;
  int? pageIndex;
  int? rowCount;
  String? sortProp;
  String? sortDir;

  factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
        listType: json["listType"],
        listTypeId: json["listTypeID"],
        languageId: json["languageID"],
        minPrice: json["minPrice"],
        maxPrice: json["maxPrice"],
        sortBy: json["sortBy"],
        keyword: json["keyword"],
        brandsIDs: json["brandsIDs"] == null
            ? null
            : List<int>.from(json["brandsIDs"].map((x) => x)),
        categoryIDs: json["categoryIDs"] == null
            ? null
            : List<int>.from(json["categoryIDs"].map((x) => x)),
        colorIDs: json["colorIDs"] == null
            ? null
            : List<int>.from(json["colorIDs"].map((x) => x)),
        sizeIDs: json["sizeIDs"] == null
            ? null
            : List<int>.from(json["sizeIDs"].map((x) => x)),
        featureValues: json["featureValues"] == null
            ? null
            : List<FeatureValue>.from(
                json["featureValues"].map((x) => FeatureValue.fromJson(x))),
        hasDiscount: json["hasDiscount"],
        storeId: json["storeID"],
        zoneId: json["zoneID"],
        pageIndex: json["pageIndex"],
        rowCount: json["rowCount"],
        sortProp: json["sortProp"],
        sortDir: json["sortDir"],
      );

  Map<String, dynamic> toJson() => {
        "listType": listType,
        "listTypeID": listTypeId,
        "languageID": languageId,
        "minPrice": minPrice,
        "maxPrice": maxPrice,
        "sortBy": sortBy,
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
            : List<dynamic>.from(featureValues!.map((x) => x.toJson())),
        "hasDiscount": hasDiscount,
        "storeID": storeId,
        "zoneID": zoneId,
        "pageIndex": pageIndex,
        "rowCount": rowCount,
        "sortProp": sortProp,
        "sortDir": sortDir,
      };
}

class FeatureValue {
  FeatureValue({
    this.id,
    this.iDs,
    this.name,
    this.featureId,
  });

  int? id;
  String? iDs;
  String? name;
  int? featureId;

  factory FeatureValue.fromJson(Map<String, dynamic> json) => FeatureValue(
        id: json["id"],
        iDs: json["iDs"],
        name: json["name"],
        featureId: json["featureID"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iDs": iDs,
        "name": name,
        "featureID": featureId,
      };
}

class ListingDataModel {
  ListingDataModel({
    this.length,
    this.items,
  });

  int? length;
  List<ListingItem>? items;

  factory ListingDataModel.fromJson(Map<String, dynamic> json) =>
      ListingDataModel(
        length: json["length"],
        items: json["items"] == null
            ? null
            : List<ListingItem>.from(
                json["items"].map((x) => ListingItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class ListingItem {
  ListingItem({
    this.rating,
    this.colorOptions,
    this.sizes,
    this.colors,
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

  double? rating;
  int? colorOptions;
  List<Size>? sizes;
  List<ColorModel>? colors;
  bool? preOrder;
  DateTime? availabilityDate;
  int? id;
  int? productId;
  String? productCode;
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

  factory ListingItem.fromJson(Map<String, dynamic> json) => ListingItem(
        rating: json["rating"],
        colorOptions: json["colorOptions"],
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
        "rating": rating,
        "colorOptions": colorOptions,
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

class FilterDataModel {
  FilterDataModel({
    this.breadCrumbs,
    this.categories,
    this.brands,
    this.priceRange,
    this.colors,
    this.sizes,
    this.features,
  });

  List<BreadCrumb>? breadCrumbs;
  List<BreadCrumb>? categories;
  List<BreadCrumb>? brands;
  PriceRange? priceRange;
  List<BreadCrumb>? colors;
  List<BreadCrumb>? sizes;
  List<Feature>? features;

  factory FilterDataModel.fromJson(Map<String, dynamic> json) =>
      FilterDataModel(
        breadCrumbs: json["breadCrumbs"] == null
            ? null
            : List<BreadCrumb>.from(
                json["breadCrumbs"].map((x) => BreadCrumb.fromJson(x))),
        categories: json["categories"] == null
            ? null
            : List<BreadCrumb>.from(
                json["categories"].map((x) => BreadCrumb.fromJson(x))),
        brands: json["brands"] == null
            ? null
            : List<BreadCrumb>.from(
                json["brands"].map((x) => BreadCrumb.fromJson(x))),
        priceRange: json["priceRange"] == null
            ? null
            : PriceRange.fromJson(json["priceRange"]),
        colors: json["colors"] == null
            ? null
            : List<BreadCrumb>.from(
                json["colors"].map((x) => BreadCrumb.fromJson(x))),
        sizes: json["sizes"] == null
            ? null
            : List<BreadCrumb>.from(
                json["sizes"].map((x) => BreadCrumb.fromJson(x))),
        features: json["features"] == null
            ? null
            : List<Feature>.from(
                json["features"].map((x) => Feature.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "breadCrumbs": breadCrumbs == null
            ? null
            : List<dynamic>.from(breadCrumbs!.map((x) => x.toJson())),
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "brands":
            brands == null ? null : List<dynamic>.from(brands!.map((x) => x)),
        "priceRange": priceRange == null ? null : priceRange!.toJson(),
        "colors": colors == null
            ? null
            : List<dynamic>.from(colors!.map((x) => x.toJson())),
        "sizes": sizes == null
            ? null
            : List<dynamic>.from(sizes!.map((x) => x.toJson())),
        "features": features == null
            ? null
            : List<dynamic>.from(features!.map((x) => x.toJson())),
      };
}

class BreadCrumb {
  BreadCrumb({
    this.id,
    this.title,
    this.resultsCount,
    this.children,
    this.hexaCode,
  });

  int? id;
  String? title;
  int? resultsCount;
  List<BreadCrumb>? children;
  String? hexaCode;

  factory BreadCrumb.fromJson(Map<String, dynamic> json) => BreadCrumb(
        id: json["id"],
        title: json["title"],
        resultsCount: json["resultsCount"],
        children: json["children"] == null
            ? null
            : List<BreadCrumb>.from(
                json["children"].map((x) => BreadCrumb.fromJson(x))),
        hexaCode: json["hexaCode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "resultsCount": resultsCount,
        "children": children == null
            ? null
            : List<dynamic>.from(children!.map((x) => x.toJson())),
        "hexaCode": hexaCode,
      };
}

class Feature {
  Feature({
    this.id,
    this.name,
    this.values,
  });

  int? id;
  String? name;
  List<Value>? values;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        id: json["id"],
        name: json["name"],
        values: json["values"] == null
            ? null
            : List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "values": values == null
            ? null
            : List<dynamic>.from(values!.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    this.id,
    this.iDs,
    this.name,
    this.featureId,
  });

  int? id;
  String? iDs;
  String? name;
  int? featureId;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        id: json["id"],
        iDs: json["iDs"],
        name: json["name"],
        featureId: json["featureID"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iDs": iDs,
        "name": name,
        "featureID": featureId,
      };
}

class PriceRange {
  PriceRange({
    this.minPrice,
    this.maxPrice,
  });

  double? minPrice;
  double? maxPrice;

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
        minPrice:
            json["minPrice"] == null ? null : json["minPrice"]!.toDouble(),
        maxPrice:
            json["maxPrice"] == null ? null : json["maxPrice"]!.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "minPrice": minPrice,
        "maxPrice": maxPrice,
      };
}

enum SortBy {
  alphaasc,
  alphadesc,
  heighestprice,
  lowestprice,
  newarrivals,
  bestseller
}
